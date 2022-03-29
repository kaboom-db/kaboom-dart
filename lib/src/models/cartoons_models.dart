class Location {
  int? id;
  String? city;
  String? nation;
  String? dateCreated;

  Location({this.id, this.city, this.nation, this.dateCreated});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'];
    nation = json['nation'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['city'] = city;
    data['nation'] = nation;
    data['date_created'] = dateCreated;
    return data;
  }
}
