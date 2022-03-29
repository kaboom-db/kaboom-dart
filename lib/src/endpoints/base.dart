import 'dart:convert';

import 'package:http/http.dart' as http;

class Endpoint {
  /// Sends an arbitrary HTTP request.
  /// 
  /// arg: if the response should be a Results instance, it will need the fromJson function passed to it.
  Future<dynamic> request(String method, Uri url, Function fromJson, {dynamic arg, Map<String, String> headers = const {}, Map<String, dynamic> body = const {}}) async {
    switch(method.toLowerCase()) {
      case "get": {
        var response = await http.get(url);
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