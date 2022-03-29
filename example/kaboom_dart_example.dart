import 'package:kaboom_dart/kaboom_dart.dart';

void main() async {
  var client = KaboomClient();
  await client.login("demo", "kaboom123");
  
/*   var comic = await client.comics?.addComic(client.accessToken!, {"series_name": "AHAHAHA comcu", "year_started": "2020", "status": "COMPLETED"});
  print(comic?.seriesName);
  print(comic?.id); */

  var comic = await client.comics?.updateComic(client.accessToken!, 14, {"publisher_id": "1"});
  print(comic?.publisher?.name);
}
