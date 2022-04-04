import 'dart:convert';

import 'package:http/http.dart' as http;

class Endpoint {
  Map<String, String> constructHeaders(String? accessToken) {
    if (accessToken != null) {
      return {
        "Authorization": "Token $accessToken",
        "Content-Type": "application/json"
      };
    } else {
      return {
        "Content-Type": "application/json"
      };
    }
  }

  Uri constructUri(String baseUrl, String path, {Map<String, dynamic>? parameters}) {
    var uri = Uri.parse(baseUrl);
    uri = uri.replace(
      path: path,
      queryParameters: parameters
    );

    return uri;
  }

  /// Sends an arbitrary HTTP request.
  /// 
  /// arg: if the response should be a Results instance, it will need the T.fromJson function passed to it.
  /// Example: request("get", url, Result<Comic>.fromJson, arg: Comic.fromJson)
  Future<dynamic> request(String method, Uri url, Function fromJson, {dynamic arg, Map<String, String> headers = const {}, String body = ""}) async {
    switch(method.toLowerCase()) {
      case "get": {
        var response = await http.get(url, headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var map = json.decode(response.body);
          if (arg == null) {
            return fromJson(map);
          } else {
            return fromJson(map, arg);
          }
        } else {
          throw Exception(response.body);
        }
      }

      case "post": {
        var response = await http.post(url, headers: headers, body: body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var map = json.decode(response.body);
          return fromJson(map);
        } else {
          throw Exception(response.body);
        }
      }

      case "patch": {
        var response = await http.patch(url, headers: headers, body: body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var map = json.decode(response.body);
          return fromJson(map);
        } else {
          throw Exception(response.body);
        }
      }

      case "delete": {
        // Not yet implemented
        throw Exception("Not implemented");
      }
    }
  }
}