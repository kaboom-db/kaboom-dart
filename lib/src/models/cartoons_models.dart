class Location {
  int? id;
  String? city;
  String? nation;
  DateTime? dateCreated;

  Location({this.id, this.city, this.nation, this.dateCreated});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'];
    nation = json['nation'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['city'] = city;
    data['nation'] = nation;
    data['date_created'] = dateCreated.toString();
    return data;
  }
}

class Cartoon {
  int? id;
  List<Genre>? genres;
  Network? network;
  List<Character>? characters;
  String? name;
  String? summary;
  int? seasonCount;
  String? coverImage;
  String? backgroundImage;
  String? status;
  double? rating;
  String? website;
  String? imdbId;
  int? tmdbId;
  DateTime? dateCreated;

  Cartoon(
      {this.id,
      this.genres,
      this.network,
      this.characters,
      this.name,
      this.summary,
      this.seasonCount,
      this.coverImage,
      this.backgroundImage,
      this.status,
      this.rating,
      this.website,
      this.imdbId,
      this.tmdbId,
      this.dateCreated});

  Cartoon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['genres'] != null) {
      genres = <Genre>[];
      json['genres'].forEach((v) {
        genres?.add(Genre.fromJson(v));
      });
    }
    network =
        json['network'] != null ? Network.fromJson(json['network']) : null;
    if (json['characters'] != null) {
      characters = <Character>[];
      json['characters'].forEach((v) {
        characters?.add(Character.fromJson(v));
      });
    }
    name = json['name'];
    summary = json['summary'];
    seasonCount = json['season_count'];
    coverImage = json['cover_image'];
    backgroundImage = json['background_image'];
    status = json['status'];
    rating = json['rating'];
    website = json['website'];
    imdbId = json['imdb_id'];
    tmdbId = json['tmdb_id'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (genres != null) {
      data['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    if (network != null) {
      data['network'] = network?.toJson();
    }
    if (characters != null) {
      data['characters'] = characters?.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['summary'] = summary;
    data['season_count'] = seasonCount;
    data['cover_image'] = coverImage;
    data['background_image'] = backgroundImage;
    data['status'] = status;
    data['rating'] = rating;
    data['website'] = website;
    data['imdb_id'] = imdbId;
    data['tmdb_id'] = tmdbId;
    data['date_created'] = dateCreated.toString();
    return data;
  }
}

class Genre {
  int? id;
  String? genre;

  Genre({this.id, this.genre});

  Genre.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    genre = json['genre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['genre'] = genre;
    return data;
  }
}

class Network {
  int? id;
  String? name;
  String? website;
  String? logo;
  DateTime? dateCreated;

  Network({this.id, this.name, this.website, this.logo, this.dateCreated});

  Network.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    website = json['website'];
    logo = json['logo'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['website'] = website;
    data['logo'] = logo;
    data['date_created'] = dateCreated.toString();
    return data;
  }
}

class Character {
  int? id;
  List<VoiceActor>? voiceActors;
  List<Team>? teams;
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
  DateTime? dateCreated;

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
      voiceActors = <VoiceActor>[];
      json['voice_actors'].forEach((v) {
        voiceActors?.add(VoiceActor.fromJson(v));
      });
    }
    if (json['teams'] != null) {
      teams = <Team>[];
      json['teams'].forEach((v) {
        teams?.add(Team.fromJson(v));
      });
    }
    locationOfOperation =
      json['location_of_operation'] != null ? Location.fromJson(json['location_of_operation']) : null;
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
    dateCreated = DateTime.parse(json['date_created']);
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
    data['date_created'] = dateCreated.toString();
    return data;
  }
}

class VoiceActor {
  int? id;
  int? age;
  String? name;
  String? image;
  DateTime? dateOfBirth;
  DateTime? dateOfDeath;
  String? biography;
  DateTime? dateCreated;

  VoiceActor(
      {this.id,
      this.age,
      this.name,
      this.image,
      this.dateOfBirth,
      this.dateOfDeath,
      this.biography,
      this.dateCreated});

  VoiceActor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    age = json['age'];
    name = json['name'];
    image = json['image'];
    dateOfBirth = json['date_of_birth'] != null 
      ? DateTime.parse(json['date_of_birth'])
      : null;
    dateOfDeath = json['date_of_death'] != null 
      ? DateTime.parse(json['date_of_death'])
      : null;
    biography = json['biography'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['age'] = age;
    data['name'] = name;
    data['image'] = image;
    data['date_of_birth'] = dateOfBirth.toString();
    data['date_of_death'] = dateOfDeath.toString();
    data['biography'] = biography;
    data['date_created'] = dateCreated.toString();
    return data;
  }
}

class Team {
  int? id;
  String? name;
  String? tagline;
  int? disbanded;
  String? disbandedLabel;
  String? history;
  String? logo;
  DateTime? dateCreated;

  Team(
      {this.id,
      this.name,
      this.tagline,
      this.disbanded,
      this.disbandedLabel,
      this.history,
      this.logo,
      this.dateCreated});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tagline = json['tagline'];
    disbanded = json['disbanded'];
    disbandedLabel = json['disbanded_label'];
    history = json['history'];
    logo = json['logo'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['tagline'] = tagline;
    data['disbanded'] = disbanded;
    data['disbanded_label'] = disbandedLabel;
    data['history'] = history;
    data['logo'] = logo;
    data['date_created'] = dateCreated.toString();
    return data;
  }
}

class Episode {
  int? id;
  Cartoon? series;
  int? seriesId;
  int? episodeNumber;
  int? seasonNumber;
  String? name;
  String? summary;
  String? releaseDate;
  String? screenshot;
  DateTime? dateCreated;
  int? runtime;

  Episode(
      {this.id,
      this.series,
      this.episodeNumber,
      this.seasonNumber,
      this.name,
      this.summary,
      this.releaseDate,
      this.screenshot,
      this.dateCreated,
      this.runtime});

  Episode.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    series =
        json['series'] != null ? Cartoon.fromJson(json['series']) : null;
    episodeNumber = json['episode_number'];
    seasonNumber = json['season_number'];
    name = json['name'];
    summary = json['summary'];
    releaseDate = json['release_date'];
    screenshot = json['screenshot'];
    dateCreated = DateTime.parse(json['date_created']);
    runtime = json['runtime'];
  }

  Episode.fromJsonLess(Map<String, dynamic> json) {
    id = json['id'];
    seriesId = json['series'];
    episodeNumber = json['episode_number'];
    seasonNumber = json['season_number'];
    name = json['name'];
    summary = json['summary'];
    releaseDate = json['release_date'];
    screenshot = json['screenshot'];
    dateCreated = DateTime.parse(json['date_created']);
    runtime = json['runtime'];
  }
}