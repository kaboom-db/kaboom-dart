import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/results.dart';
import '../models/comics_models.dart';

class ComicsEndpoint {
  Future<Results<Series>> getComics() async {
    var response = await http.get(Uri(scheme: 'https', host: "staging-kaboom.herokuapp.com", path: "/v1/comics/series/"));
    if (response.statusCode == 200){
      var map = json.decode(response.body);
      return Results<Series>.fromJson(map, Series.fromJson);
    } else {
      throw Exception();
    }
  }
}