import 'dart:convert';

import 'package:http/http.dart' as http;
import 'models/comics_models.dart';

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;

  Future<PublisherResults> getPublishers() async {
    var response = await http.get(Uri(scheme: 'https', host: "staging-kaboom.herokuapp.com", path: "/v1/comics/publishers/"));
    if (response.statusCode == 200){
      var map = json.decode(response.body);
      return PublisherResults.fromJson(map);
    } else {
      throw Exception();
    }
  }
}
