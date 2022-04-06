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

  Future<ImageRequest> upload(String accessToken, String filePath, String objectType, int objectId, String requestField) async {
    var uri = constructUri(url, "/v1/accounts/upload/");
    var headers = constructHeaders(accessToken);
    
    // Construct the request
    http.MultipartRequest req = http.MultipartRequest("POST", uri);
    req.headers.addAll(headers);
    req.fields['object_type'] = objectType;
    req.fields['object_id'] = objectId.toString();
    req.fields['request_field'] = requestField;
    req.files.add(await http.MultipartFile.fromPath('image', filePath));

    // Send the request
    var stream = await req.send();

    var response = await http.Response.fromStream(stream);
    if (response.statusCode == 201) {
      var map = json.decode(response.body);
      return ImageRequest.fromJson(map);
    } else {
      throw Exception(response.body);
    }
  }

  // ----------------------- COMIC SUBSCRIPTIONS -----------------------

  Future<Results<ComicSubscription>> getComicSubs(String? accessToken, {Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/accounts/comics/subscriptions/");
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<ComicSubscription>.fromJson, arg: ComicSubscription.fromJson, headers: headers);
    return results as Results<ComicSubscription>;
  }

  Future<ComicSubscription> addComicSub(String? accessToken, String values) async {
    var uri = constructUri(url, "/v1/accounts/comics/subscriptions/");
    var headers = constructHeaders(accessToken);

    var sub = await request("post", uri, ComicSubscription.fromJsonLess, headers: headers, body: values);
    return sub as ComicSubscription;
  }

  Future<Success> removeComicSub(String? accessToken, int seriesId) async {
    var uri = constructUri(url, "/v1/accounts/comics/subscriptions/");
    var headers = constructHeaders(accessToken);
    String body = "{\"series\": \"$seriesId\"}";
    
    var status = await request("delete", uri, Success.fromJson, headers: headers, body: body);
    return status as Success;
  }

  Future<ComicSubscription> rateComicSub(String? accessToken, int seriesId, double rating) async {
    var uri = constructUri(url, "/v1/accounts/comics/subscriptions/rate/");
    var headers = constructHeaders(accessToken);
    String body = "{\"series\": \"$seriesId\", \"rating\": $rating}";

    var comic = await request("post", uri, ComicSubscription.fromJsonLess, headers: headers, body: body);
    return comic as ComicSubscription;
  }

  // ----------------------- READ ISSUES -----------------------

  Future<Results<ReadIssue>> getReadIssues(String? accessToken, {Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/accounts/comics/readissues/");
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<ReadIssue>.fromJson, arg: ReadIssue.fromJson, headers: headers);
    return results as Results<ReadIssue>;
  }

  Future<ReadIssue> addReadIssue(String? accessToken, String values) async {
    var uri = constructUri(url, "/v1/accounts/comics/readissues/");
    var headers = constructHeaders(accessToken);

    var ri = await request("post", uri, ReadIssue.fromJsonLess, headers: headers, body: values);
    return ri as ReadIssue;
  }

  Future<Success> removeReadIssue(String? accessToken, int readIssueId) async {
    var uri = constructUri(url, "/v1/accounts/comics/readissues/");
    var headers = constructHeaders(accessToken);
    String body = "{\"read_id\": \"$readIssueId\"}";
    
    var status = await request("delete", uri, Success.fromJson, headers: headers, body: body);
    return status as Success;
  }

  Future<Success> cleanReadIssue(String? accessToken, int issueId) async {
    var uri = constructUri(url, "/v1/accounts/comics/readissues/clean/");
    var headers = constructHeaders(accessToken);
    String body = "{\"issue\": \"$issueId\"}";
    
    var status = await request("delete", uri, Success.fromJson, headers: headers, body: body);
    return status as Success;
  }

  // ----------------------- CARTOON SUBSCRIPTIONS -----------------------

  Future<Results<CartoonSubscription>> getCartoonSubs(String? accessToken, {Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/accounts/cartoons/subscriptions/");
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<CartoonSubscription>.fromJson, arg: CartoonSubscription.fromJson, headers: headers);
    return results as Results<CartoonSubscription>;
  }

  Future<CartoonSubscription> addCartoonSub(String? accessToken, String values) async {
    var uri = constructUri(url, "/v1/accounts/cartoons/subscriptions/");
    var headers = constructHeaders(accessToken);

    var sub = await request("post", uri, CartoonSubscription.fromJsonLess, headers: headers, body: values);
    return sub as CartoonSubscription;
  }

  Future<Success> removeCartoonSub(String? accessToken, int seriesId) async {
    var uri = constructUri(url, "/v1/accounts/cartoons/subscriptions/");
    var headers = constructHeaders(accessToken);
    String body = "{\"series\": \"$seriesId\"}";
    
    var status = await request("delete", uri, Success.fromJson, headers: headers, body: body);
    return status as Success;
  }

  Future<CartoonSubscription> rateCartoonSub(String? accessToken, int seriesId, double rating) async {
    var uri = constructUri(url, "/v1/accounts/cartoons/subscriptions/rate/");
    var headers = constructHeaders(accessToken);
    String body = "{\"series\": \"$seriesId\", \"rating\": $rating}";

    var comic = await request("post", uri, CartoonSubscription.fromJsonLess, headers: headers, body: body);
    return comic as CartoonSubscription;
  }
}