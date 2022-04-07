import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:kaboom_dart/src/models/auth_models.dart';
import 'package:kaboom_dart/src/endpoints/comics_endpoint.dart';
import 'package:kaboom_dart/src/endpoints/cartoons_endpoint.dart';
import 'package:kaboom_dart/src/endpoints/accounts_endpoint.dart';
import 'package:kaboom_dart/src/endpoints/social_endpoint.dart';

class KaboomClient {
  String url = "";
  String? accessToken;
  ComicsEndpoint? comics;
  CartoonsEndpoint? cartoons;
  AccountsEndpoint? accounts;
  SocialEndpoint? social;

  KaboomClient({this.url = "https://staging-kaboom.herokuapp.com"}) {
    comics = ComicsEndpoint(url);
    cartoons = CartoonsEndpoint(url);
    accounts = AccountsEndpoint(url);
    social = SocialEndpoint(url);
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