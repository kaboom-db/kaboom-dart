import 'package:kaboom_dart/kaboom_dart.dart';

void main() async {
  var client = KaboomClient();
  await client.login("demo", "kaboom123");
  var accessToken = client.accessToken;

  // var body  = "{\"issue_name\": \"New issue name\", \"characters_id\": [1, 2, 3], \"format_id\": \"1\"}";

  var t = await client.comics?.getComics(params: {"query": "venom"});
  t?.results?.forEach((element) {
    print(element.seriesName);
  });
}