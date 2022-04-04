import 'package:kaboom_dart/kaboom_dart.dart';

void main() async {
  var client = KaboomClient();
  await client.login("demo", "kaboom123");
  
/*   var comic = await client.comics?.addComic(client.accessToken!, {"series_name": "AHAHAHA comcu", "year_started": "2020", "status": "COMPLETED"});
  print(comic?.seriesName);
  print(comic?.id); */

  // var body  = "{\"issue_name\": \"New issue name\", \"characters_id\": [1, 2, 3], \"format_id\": \"1\"}";

  var t = await client.accounts?.handleUpload(client.accessToken.toString(), Uri.parse("https://staging-kaboom.herokuapp.com/v1/accounts/upload/"), "/home/crxssed/projectstmp/kaboom-dart/example/test.jpeg", "comics_Publisher", 1, "LOGO");
  print(t?.image);
}