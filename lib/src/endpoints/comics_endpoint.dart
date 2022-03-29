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

  Future<Results<Comic>> getComics({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/',
      queryParameters: params
    );

    var results = await request("get", uri, Results<Comic>.fromJson, arg: Comic.fromJson);
    return results as Results<Comic>;
  }

  Future<Comic> addComic(String accessToken, Map<String, String> comic) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/'
    );
    var headers = {
      "Authorization": "Token $accessToken"
    };

    var result = await request("post", uri, Comic.fromJson, headers: headers, body: comic);
    return result as Comic;
  }

  Future<Comic> getComic(int id) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/$id/'
    );

    var comic = await request("get", uri, Comic.fromJson);
    return comic as Comic;
  }

  Future<Comic> updateComic(String accessToken, int id, Map<String, dynamic> values) async {
    var uri = Uri.parse(url);
    uri = uri.replace(
      path: '/v1/comics/series/$id/'
    );
    var headers = {
      "Authorization": "Token $accessToken"
    };

    var comic = await request("patch", uri, Comic.fromJson, headers: headers, body: values);
    return comic as Comic;
  }
}