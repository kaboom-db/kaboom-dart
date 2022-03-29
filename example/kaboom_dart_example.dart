import 'package:kaboom_dart/kaboom_dart.dart';

void main() async {
  var client = KaboomClient();
  var r = await client.comics.getComics();
  r.results?.forEach((element) {
    print(element.seriesName);
  });
}
