class Results<T> {
  int? count;
  String? next;
  String? previous;
  List<T>? results;

  Results({this.count, this.next, this.previous, this.results});

  Results.fromJson(Map<String, dynamic> json, Function fromJson) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <T>[];
      json['results'].forEach((v) {
        results?.add(fromJson(v));
      });
    }
  }
}