import 'dart:ffi';
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['website'] = this.website;
    data['date_created'] = this.dateCreated;
    return data;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.voiceActors != null) {
      data['voice_actors'] = this.voiceActors?.map((v) => v.toJson()).toList();
    }
    if (this.teams != null) {
      data['teams'] = this.teams?.map((v) => v.toJson()).toList();
    }
    data['location_of_operation'] = this.locationOfOperation;
    data['name'] = this.name;
    data['alias'] = this.alias;
    data['image'] = this.image;
    data['biography'] = this.biography;
    data['status'] = this.status;
    data['alignment'] = this.alignment;
    data['intelligence'] = this.intelligence;
    data['strength'] = this.strength;
    data['speed'] = this.speed;
    data['durability'] = this.durability;
    data['power'] = this.power;
    data['combat'] = this.combat;
    data['date_created'] = this.dateCreated;
    return data;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['age'] = this.age;
    data['name'] = this.name;
    data['image'] = this.image;
    data['date_of_birth'] = this.dateOfBirth;
    data['date_of_death'] = this.dateOfDeath;
    data['biography'] = this.biography;
    data['date_created'] = this.dateCreated;
    return data;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tagline'] = this.tagline;
    data['disbanded'] = this.disbanded;
    data['history'] = this.history;
    data['logo'] = this.logo;
    data['date_created'] = this.dateCreated;
    return data;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.position != null) {
      data['position'] = this.position?.toJson();
    }
    data['age'] = this.age;
    data['name'] = this.name;
    data['image'] = this.image;
    data['date_of_birth'] = this.dateOfBirth;
    data['date_of_death'] = this.dateOfDeath;
    data['biography'] = this.biography;
    data['date_created'] = this.dateCreated;
    return data;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['position'] = this.position;
    return data;
  }
}

class Issue {
  int? id;
  List<Character>? characters;
  List<Staff>? staff;
  Series? series;
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
    series =
        json['series'] != null ? Series.fromJson(json['series']) : null;
    format = json['format'];
    issueNumberAbsolute = json['issue_number_absolute'];
    issueName = json['issue_name'];
    summary = json['summary'];
    releaseDate = json['release_date'];
    coverImage = json['cover_image'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.characters != null) {
      data['characters'] = this.characters?.map((v) => v.toJson()).toList();
    }
    if (this.staff != null) {
      data['staff'] = this.staff?.map((v) => v.toJson()).toList();
    }
    if (this.series != null) {
      data['series'] = this.series?.toJson();
    }
    data['format'] = this.format;
    data['issue_number_absolute'] = this.issueNumberAbsolute;
    data['issue_name'] = this.issueName;
    data['summary'] = this.summary;
    data['release_date'] = this.releaseDate;
    data['cover_image'] = this.coverImage;
    data['date_created'] = this.dateCreated;
    return data;
  }
}

class Series {
  int? id;
  Publisher? publisher;
  String? seriesName;
  String? summary;
  int? yearStarted;
  String? status;
  String? coverImage;
  String? backgroundImage;
  Float? rating;
  String? dateCreated;

  Series(
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

  Series.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.publisher != null) {
      data['publisher'] = this.publisher?.toJson();
    }
    data['series_name'] = this.seriesName;
    data['summary'] = this.summary;
    data['year_started'] = this.yearStarted;
    data['status'] = this.status;
    data['cover_image'] = this.coverImage;
    data['background_image'] = this.backgroundImage;
    data['rating'] = this.rating;
    data['date_created'] = this.dateCreated;
    return data;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class PublisherResults {
  int? count;
  String? next;
  String? previous;
  List<Publisher>? results;

  PublisherResults({this.count, this.next, this.previous, this.results});

  PublisherResults.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Publisher>[];
      json['results'].forEach((v) {
        results?.add(Publisher.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}