import 'cartoons_models.dart';

class Publisher {
  int? id;
  String? name;
  String? logo;
  String? website;
  String? dateCreated;

  Publisher({this.id, this.name, this.logo, this.website, this.dateCreated});

  Publisher.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
    website = json['website'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['logo'] = logo;
    data['website'] = website;
    data['date_created'] = dateCreated;
    return data;
  }

  @override
  String toString() {
    return name!;
  }
}

class Character {
  int? id;
  List<VoiceActors>? voiceActors;
  List<Teams>? teams;
  Location? locationOfOperation;
  String? name;
  String? alias;
  String? image;
  String? biography;
  String? status;
  String? alignment;
  int? intelligence;
  int? strength;
  int? speed;
  int? durability;
  int? power;
  int? combat;
  String? dateCreated;

  Character(
      {this.id,
      this.voiceActors,
      this.teams,
      this.locationOfOperation,
      this.name,
      this.alias,
      this.image,
      this.biography,
      this.status,
      this.alignment,
      this.intelligence,
      this.strength,
      this.speed,
      this.durability,
      this.power,
      this.combat,
      this.dateCreated});

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['voice_actors'] != null) {
      voiceActors = <VoiceActors>[];
      json['voice_actors'].forEach((v) {
        voiceActors?.add(VoiceActors.fromJson(v));
      });
    }
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams?.add(Teams.fromJson(v));
      });
    }
    locationOfOperation = json['location_of_operation'];
    name = json['name'];
    alias = json['alias'];
    image = json['image'];
    biography = json['biography'];
    status = json['status'];
    alignment = json['alignment'];
    intelligence = json['intelligence'];
    strength = json['strength'];
    speed = json['speed'];
    durability = json['durability'];
    power = json['power'];
    combat = json['combat'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (voiceActors != null) {
      data['voice_actors'] = voiceActors?.map((v) => v.toJson()).toList();
    }
    if (teams != null) {
      data['teams'] = teams?.map((v) => v.toJson()).toList();
    }
    data['location_of_operation'] = locationOfOperation;
    data['name'] = name;
    data['alias'] = alias;
    data['image'] = image;
    data['biography'] = biography;
    data['status'] = status;
    data['alignment'] = alignment;
    data['intelligence'] = intelligence;
    data['strength'] = strength;
    data['speed'] = speed;
    data['durability'] = durability;
    data['power'] = power;
    data['combat'] = combat;
    data['date_created'] = dateCreated;
    return data;
  }

  @override
  String toString() {
    return name!;
  }
}

class VoiceActors {
  int? id;
  int? age;
  String? name;
  String? image;
  String? dateOfBirth;
  String? dateOfDeath;
  String? biography;
  String? dateCreated;

  VoiceActors(
      {this.id,
      this.age,
      this.name,
      this.image,
      this.dateOfBirth,
      this.dateOfDeath,
      this.biography,
      this.dateCreated});

  VoiceActors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    age = json['age'];
    name = json['name'];
    image = json['image'];
    dateOfBirth = json['date_of_birth'];
    dateOfDeath = json['date_of_death'];
    biography = json['biography'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['age'] = age;
    data['name'] = name;
    data['image'] = image;
    data['date_of_birth'] = dateOfBirth;
    data['date_of_death'] = dateOfDeath;
    data['biography'] = biography;
    data['date_created'] = dateCreated;
    return data;
  }

  @override
  String toString() {
    return name!;
  }
}

class Teams {
  int? id;
  String? name;
  String? tagline;
  int? disbanded;
  String? history;
  String? logo;
  String? dateCreated;

  Teams(
      {this.id,
      this.name,
      this.tagline,
      this.disbanded,
      this.history,
      this.logo,
      this.dateCreated});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tagline = json['tagline'];
    disbanded = json['disbanded'];
    history = json['history'];
    logo = json['logo'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['tagline'] = tagline;
    data['disbanded'] = disbanded;
    data['history'] = history;
    data['logo'] = logo;
    data['date_created'] = dateCreated;
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
  String? dateOfBirth;
  String? dateOfDeath;
  String? biography;
  String? dateCreated;

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
    dateOfBirth = json['date_of_birth'];
    dateOfDeath = json['date_of_death'];
    biography = json['biography'];
    dateCreated = json['date_created'];
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
    data['date_of_birth'] = dateOfBirth;
    data['date_of_death'] = dateOfDeath;
    data['biography'] = biography;
    data['date_created'] = dateCreated;
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
  String? dateCreated;

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
    dateCreated = json['date_created'];
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
    data['date_created'] = dateCreated;
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
  String? dateCreated;

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
    dateCreated = json['date_created'];
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
    data['date_created'] = dateCreated;
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