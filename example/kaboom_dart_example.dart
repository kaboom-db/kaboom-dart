import 'package:kaboom_dart/kaboom_dart.dart';

void main() async {
  var awesome = Awesome();
  var r = await awesome.getPublishers();
  r.results?.forEach((element) {
    print(element.name);
  });
}
