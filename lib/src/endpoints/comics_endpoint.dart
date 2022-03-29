import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/results.dart';
import '../models/comics_models.dart';

class ComicsEndpoint {
  String url = "";
  
  ComicsEndpoint(this.url);

  Future<Results<Comic>> getComics({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/',
      queryParameters: params
    );

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var map = json.decode(response.body);
      return Results<Comic>.fromJson(map, Comic.fromJson);
    } else {
      throw Exception(response.body);
    }
  }

  Future<Comic> addComic(String accessToken, Map<String, dynamic> comic) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/'
    );
    var headers = {
      "Authorization": "Token $accessToken"
    };
    
    var response = await http.post(uri, headers: headers, body: comic);
    if (response.statusCode == 201) {
      var map = json.decode(response.body);
      return Comic.fromJson(map);
    } else {
      throw Exception(response.body);
    }
  }

  Future<Comic> getComic(int id) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/$id/'
    );

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var map = json.decode(response.body);
      return Comic.fromJson(map);
    } else {
      throw Exception(response.body);
    }
  }

  Future<Comic> updateComic(String accessToken, int id, Map<String, dynamic> values) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/$id/'
    );
    var headers = {
      "Authorization": "Token $accessToken"
    };

    var response = await http.patch(uri, headers: headers, body: values);
    if (response.statusCode == 200) {
      var map = json.decode(response.body);
      return Comic.fromJson(map);
    } else {
      throw Exception(response.body);
    }
  }
}