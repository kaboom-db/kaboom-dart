import 'dart:io';
import 'dart:convert';

import 'package:kaboom_dart/src/endpoints/base.dart';
import 'package:kaboom_dart/src/models/accounts_models.dart';
import 'package:kaboom_dart/src/models/results.dart';

import 'package:http/http.dart' as http;

class AccountsEndpoint extends Endpoint {
  String url = "";
  
  AccountsEndpoint(this.url);

  // ----------------------- USERS -----------------------

  Future<Results<User>> getUsers(String? accessToken, {Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/accounts/users/", parameters: params);
    var headers = constructHeaders(accessToken);
    
    var results = await request("get", uri, Results<User>.fromJson, arg: User.fromJson, headers: headers);
    return results as Results<User>;
  }

  Future<User> getUser(String? accessToken, String username) async {
    var uri = constructUri(url, "/v1/accounts/users/$username/");
    var headers = constructHeaders(accessToken);

    var user = await request("get", uri, User.fromJson, headers: headers);
    return user as User;
  }

  Future<User> updateUser(String? accessToken, String username, String values) async {
    var uri = constructUri(url, "/v1/accounts/users/$username/");
    var headers = constructHeaders(accessToken);

    var user = await request("patch", uri, User.fromJson, headers: headers, body: values);
    return user as User;
  }

  // ----------------------- REPORTS -----------------------

  // Issue: #1
  String constructReportValues(String objectType, int objectId, String message) {
    return "{\"object_type\": \"$objectType\", \"object_id\": $objectId, \"message\": \"$message\"}";
  }

  Future<Report> report(String? accessToken, String values) async {
    var uri = constructUri(url, "/v1/accounts/report/");
    var headers = constructHeaders(accessToken);

    var report = await request("post", uri, Report.fromJson, headers: headers, body: values);
    return report as Report;
  }

  // ----------------------- IMAGE UPLOADS -----------------------

  // This will need a massive rewrite
  Future<ImageRequest> handleUpload(String accessToken, Uri uri, String filePath, String objectType, int objectId, String requestFields) async {
    // Construct the request
    http.MultipartRequest req = http.MultipartRequest("POST", uri);
    req.headers.addAll({
      'Accept': 'application/json',
      'Authorization': 'Token $accessToken'
    });
    req.fields['object_type'] = objectType;
    req.fields['object_id'] = objectId.toString();
    req.fields['request_field'] = requestFields;
    File f = File(filePath);
    req.files.add(await http.MultipartFile.fromPath('image', f.path));
    var stream = await req.send();
    var response = await http.Response.fromStream(stream);
    if (response.statusCode == 201) {
      var map = json.decode(response.body);
      return ImageRequest.fromJson(map);
    } else {
      throw Exception(response.body);
    }
  }
}