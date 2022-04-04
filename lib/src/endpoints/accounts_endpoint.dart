import 'package:kaboom_dart/src/endpoints/base.dart';
import 'package:kaboom_dart/src/models/accounts_models.dart';
import 'package:kaboom_dart/src/models/results.dart';

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
  // how tf do i handle files 

  Future<ImageRequest> upload(String accessToken, String filePath, String values) async {
    throw Exception("Not implemented ;)");
  }
}