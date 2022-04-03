import 'cartoons_models.dart';

class Publisher {
  int? id;
  String? name;
  String? logo;
  String? website;
  DateTime? dateCreated;

  Publisher({this.id, this.name, this.logo, this.website, this.dateCreated});

  Publisher.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
    website = json['website'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['logo'] = logo;
    data['website'] = website;
    data['date_created'] = dateCreated.toString();
    return data;
  }

  @override
  String toString() {
    return name!;
  }
}

class Staff {
  int? id;
  StaffPosition? position;
  int? age;
  String? name;
  String? image;
  DateTime? dateOfBirth;
  DateTime? dateOfDeath;
  String? biography;
  DateTime? dateCreated;

  Staff(
      {this.id,
      this.position,
      this.age,
      this.name,
      this.image,
      this.dateOfBirth,
      this.dateOfDeath,
      this.biography,
      this.dateCreated});

  Staff.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'] != null
        ? StaffPosition.fromJson(json['position'])
        : null;
    age = json['age'];
    name = json['name'];
    image = json['image'];
    dateOfBirth = json['date_of_birth'] != null 
      ? DateTime.parse(json['date_of_birth'])
      : null;
    dateOfDeath = json['date_of_death'] != null 
      ?DateTime.parse(json['date_of_death'])
      : null;
    biography = json['biography'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (position != null) {
      data['position'] = position?.toJson();
    }
    data['age'] = age;
    data['name'] = name;
    data['image'] = image;
    data['date_of_birth'] = dateOfBirth.toString();
    data['date_of_death'] = dateOfDeath.toString();
    data['biography'] = biography;
    data['date_created'] = dateCreated.toString();
    return data;
  }

  @override
  String toString() {
    return name!;
  }
}

class StaffPosition {
  int? id;
  String? position;

  StaffPosition({this.id, this.position});

  StaffPosition.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['position'] = position;
    return data;
  }

  @override
  String toString() {
    return position!;
  }
}

class Issue {
  int? id;
  List<Character>? characters;
  List<Staff>? staff;
  Comic? series;
  Format? format;
  int? issueNumberAbsolute;
  String? issueName;
  String? summary;
  String? releaseDate;
  String? coverImage;
  DateTime? dateCreated;

  Issue(
      {this.id,
      this.characters,
      this.staff,
      this.series,
      this.format,
      this.issueNumberAbsolute,
      this.issueName,
      this.summary,
      this.releaseDate,
      this.coverImage,
      this.dateCreated});

  Issue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['characters'] != null) {
      characters = <Character>[];
      json['characters'].forEach((v) {
        characters?.add(Character.fromJson(v));
      });
    }
    if (json['staff'] != null) {
      staff = <Staff>[];
      json['staff'].forEach((v) {
        staff?.add(Staff.fromJson(v));
      });
    }
    series = json['series'] != null 
      ? Comic.fromJson(json['series']) 
      : null;
    format = json['format'] != null
      ? Format.fromJson(json['format'])
      : null;
    issueNumberAbsolute = json['issue_number_absolute'];
    issueName = json['issue_name'];
    summary = json['summary'];
    releaseDate = json['release_date'];
    coverImage = json['cover_image'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (characters != null) {
      data['characters'] = characters?.map((v) => v.toJson()).toList();
    }
    if (staff != null) {
      data['staff'] = staff?.map((v) => v.toJson()).toList();
    }
    if (series != null) {
      data['series'] = series?.toJson();
    }
    if (format != null) {
      data['format'] = format?.toJson();
    }
    data['issue_number_absolute'] = issueNumberAbsolute;
    data['issue_name'] = issueName;
    data['summary'] = summary;
    data['release_date'] = releaseDate;
    data['cover_image'] = coverImage;
    data['date_created'] = dateCreated.toString();
    return data;
  }

  @override
  String toString() {
    return issueName! + ' ' + issueNumberAbsolute!.toString();
  }
}

class Comic {
  int? id;
  Publisher? publisher;
  String? seriesName;
  String? summary;
  int? yearStarted;
  String? status;
  String? coverImage;
  String? backgroundImage;
  double? rating;
  DateTime? dateCreated;

  Comic(
      {this.id,
      this.publisher,
      this.seriesName,
      this.summary,
      this.yearStarted,
      this.status,
      this.coverImage,
      this.backgroundImage,
      this.rating,
      this.dateCreated});

  Comic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    publisher = json['publisher'] != null
        ? Publisher.fromJson(json['publisher'])
        : null;
    seriesName = json['series_name'];
    summary = json['summary'];
    yearStarted = json['year_started'];
    status = json['status'];
    coverImage = json['cover_image'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (publisher != null) {
      data['publisher'] = publisher?.toJson();
    }
    data['series_name'] = seriesName;
    data['summary'] = summary;
    data['year_started'] = yearStarted;
    data['status'] = status;
    data['cover_image'] = coverImage;
    data['background_image'] = backgroundImage;
    data['rating'] = rating;
    data['date_created'] = dateCreated.toString();
    return data;
  }

  @override
  String toString() {
    return seriesName!;
  }
}

class Format {
  int? id;
  String? name;

  Format({this.id, this.name});

  Format.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }

  @override
  String toString() {
    return name!;
  }
}