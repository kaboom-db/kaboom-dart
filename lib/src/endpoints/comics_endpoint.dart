import 'package:kaboom_dart/src/endpoints/base.dart';
import 'package:kaboom_dart/src/models/results.dart';
import 'package:kaboom_dart/src/models/comics_models.dart';

class ComicsEndpoint extends Endpoint {
  String url = "";
  
  ComicsEndpoint(this.url);

  // Future<Results<Comic>> getComics({Map<String, dynamic> params = const <String, dynamic>{}}) async {
  //   var uri = Uri.parse(url);
  //   uri = uri.replace(
  //     path: '/v1/comics/series/',
  //     queryParameters: params
  //   );

  //   var response = await http.get(uri);
  //   if (response.statusCode == 200) {
  //     var map = json.decode(response.body);
  //     return Results<Comic>.fromJson(map, Comic.fromJson);
  //   } else {
  //     throw Exception(response.body);
  //   }
  // }

  // ----------------------- COMICS -----------------------

  Future<Results<Comic>> getComics({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/comics/series/", parameters: params);

    var results = await request("get", uri, Results<Comic>.fromJson, arg: Comic.fromJson);
    return results as Results<Comic>;
  }

  Future<Comic> addComic(String? accessToken, String comic) async {
    var uri = constructUri(url, "/v1/comics/series/");
    var headers = {
      "Authorization": "Token $accessToken",
      "Content-Type": "application/json"
    };

    var result = await request("post", uri, Comic.fromJson, headers: headers, body: comic);
    return result as Comic;
  }

  Future<Comic> getComic(int id) async {
    var uri = constructUri(url, "/v1/comics/series/$id/");

    var comic = await request("get", uri, Comic.fromJson);
    return comic as Comic;
  }

  Future<Comic> updateComic(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/comics/series/$id/");
    var headers = {
      "Authorization": "Token $accessToken",
      "Content-Type": "application/json"
    };

    var comic = await request("patch", uri, Comic.fromJson, headers: headers, body: values);
    return comic as Comic;
  }

  // ----------------------- ISSUES -----------------------

  Future<Results<Issue>> getIssues({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/comics/issues/", parameters: params);

    var results = await request("get", uri, Results<Issue>.fromJson, arg: Issue.fromJson);
    return results as Results<Issue>;
  }

  Future<Issue> addIssue(String? accessToken, String issue) async {
    var uri = constructUri(url, "/v1/comics/issues/");
    var headers = {
      "Authorization": "Token $accessToken",
      "Content-Type": "application/json"
    };

    var result = await request("post", uri, Issue.fromJson, headers: headers, body: issue);
    return result as Issue;
  }

  Future<Issue> getIssue(int id) async {
    var uri = constructUri(url, "/v1/comics/issues/$id/");

    var issue = await request("get", uri, Issue.fromJson);
    return issue as Issue;
  }

  Future<Issue> updateIssue(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/comics/issues/$id/");
    var headers = {
      "Authorization": "Token $accessToken",
      "Content-Type": "application/json"
    };

    var result = await request("patch", uri, Issue.fromJson, headers: headers, body: values);
    return result as Issue;
  }

  // ----------------------- PUBLISHERS -----------------------

  Future<Results<Publisher>> getPublishers({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/comics/publishers/", parameters: params);

    var result = await request("get", uri, Results<Publisher>.fromJson, arg: Publisher.fromJson);
    return result as Results<Publisher>;
  }

  Future<Publisher> addPublisher(String? accessToken, String publisher) async {
    var uri = constructUri(url, "/v1/comics/publishers/");
    var headers = constructHeaders(accessToken);

    var result = await request("post", uri, Publisher.fromJson, headers: headers, body: publisher);
    return result as Publisher;
  }

  Future<Publisher> getPublisher(int id) async {
    var uri = constructUri(url, "/v1/comics/publishers/$id/");

    var publisher = await request("get", uri, Publisher.fromJson);
    return publisher as Publisher;
  }

  Future<Publisher> updatePublisher(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/comics/publishers/$id/");
    var headers = constructHeaders(accessToken);

    var publisher = await request("patch", uri, Publisher.fromJson, headers: headers, body: values);
    return publisher as Publisher;
  }

  // ----------------------- STAFF -----------------------

  Future<Results<Staff>> getStaffs({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/comics/staff/", parameters: params);

    var result = await request("get", uri, Results<Staff>.fromJson, arg: Staff.fromJson);
    return result as Results<Staff>;
  }

  Future<Staff> addStaff(String? accessToken, String staff) async {
    var uri = constructUri(url, "/v1/comics/staff/");
    var headers = constructHeaders(accessToken);

    var result = await request("post", uri, Staff.fromJson, headers: headers, body: staff);
    return result as Staff;
  }

  Future<Staff> getStaff(int id) async {
    var uri = constructUri(url, "/v1/comics/staff/$id/");

    var staff = await request("get", uri, Staff.fromJson);
    return staff as Staff;
  }

  Future<Staff> updateStaff(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/comics/staff/$id/");
    var headers = constructHeaders(accessToken);

    var staff = await request("patch", uri, Staff.fromJson, headers: headers, body: values);
    return staff as Staff;
  }

  // ----------------------- STAFF POSITIONS -----------------------

  Future<Results<StaffPosition>> getStaffPositions({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/comics/staffpositions/", parameters: params);

    var result = await request("get", uri, Results<StaffPosition>.fromJson, arg: StaffPosition.fromJson);
    return result as Results<StaffPosition>;
  }

  Future<StaffPosition> getStaffPosition(int id) async {
    var uri = constructUri(url, "/v1/comics/staffpositions/$id/");

    var staffp = await request("get", uri, StaffPosition.fromJson);
    return staffp as StaffPosition;
  }

  // ----------------------- FORMATS -----------------------

  Future<Results<Format>> getFormats({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/comics/formats/", parameters: params);

    var result = await request("get", uri, Results<Format>.fromJson, arg: Format.fromJson);
    return result as Results<Format>;
  }

  Future<Format> getFormat(int id) async {
    var uri = constructUri(url, "/v1/comics/formats/$id/");

    var format = await request("get", uri, Format.fromJson);
    return format as Format;
  }
}