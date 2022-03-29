import 'package:kaboom_dart/kaboom_dart.dart';

void main() async {
  var client = KaboomClient();
  await client.login("demo", "kaboom123");
  
  var comic = await client.comics?.updateComic(client.accessToken!, 14, {"publisher_id": "1"});
  print(comic?.publisher?.name);
}
