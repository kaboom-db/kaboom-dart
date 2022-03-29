import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/auth_models.dart';
import 'endpoints/comics_endpoint.dart';

class KaboomClient {
  String url = "";
  String? accessToken;
  ComicsEndpoint? comics;

  KaboomClient({this.url = "https://staging-kaboom.herokuapp.com"}) {
    comics = ComicsEndpoint(url);
  }

  /// Logs a user in. Also saves the token in accessToken for future use.
  Future<LoginToken> login(String username, String password) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/accounts/login/'
    );
    var credentials = {
      "username": username,
      "password": password
    };

    var response = await http.post(uri, body: credentials);
    if (response.statusCode == 200) {
      var map = json.decode(response.body);
      var obj = LoginToken.fromJson(map);
      accessToken = obj.token;
      return obj;
    } else {
      throw Exception(response.body);
    }
  }

  Future<LoginToken> signup(String username, String password, String email) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/accounts/signup/'
    );
    var credentials = {
      "username": username,
      "password": password,
      "email": email
    };

    var response = await http.post(uri, body: credentials);
    if (response.statusCode == 201) {
      var map = json.decode(response.body);
      var obj = LoginToken.fromJson(map);
      accessToken = obj.token;
      return obj;
    } else {
      throw Exception(response.body);
    }
  }
}