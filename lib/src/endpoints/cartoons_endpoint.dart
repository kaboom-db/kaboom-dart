import 'package:kaboom_dart/src/endpoints/base.dart';
import 'package:kaboom_dart/src/models/results.dart';
import 'package:kaboom_dart/src/models/cartoons_models.dart';

class CartoonsEndpoint extends Endpoint {
  String url = "";
  
  CartoonsEndpoint(this.url);

  // ----------------------- CARTOONS -----------------------
    
  Future<Results<Cartoon>> getCartoons({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/series/", parameters: params);

    var results = await request("get", uri, Results<Cartoon>.fromJson, arg: Cartoon.fromJson);
    return results as Results<Cartoon>;
  }

  Future<Cartoon> addCartoon(String? accessToken, String cartoon) async {
    var uri = constructUri(url, "/v1/cartoons/series/");
    var headers = constructHeaders(accessToken);

    var result = await request("post", uri, Cartoon.fromJson, headers: headers, body: cartoon);
    return result as Cartoon;
  }

  Future<Cartoon> getCartoon(int id) async {
    var uri = constructUri(url, "/v1/cartoons/series/$id/");

    var cartoon = await request("get", uri, Cartoon.fromJson);
    return cartoon as Cartoon;
  }

  Future<Cartoon> updateCartoon(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/cartoons/series/$id/");
    var headers = constructHeaders(accessToken);

    var cartoon = await request("patch", uri, Cartoon.fromJson, headers: headers, body: values);
    return cartoon as Cartoon;
  }

  // ----------------------- EPISODES -----------------------

  Future<Results<Episode>> getEpisodes({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/episodes/", parameters: params);

    var results = await request("get", uri, Results<Episode>.fromJson, arg: Episode.fromJson);
    return results as Results<Episode>;
  }

  Future<Episode> addEpisode(String? accessToken, String episode) async {
    var uri = constructUri(url, "/v1/cartoons/episodes/");
    var headers = constructHeaders(accessToken);
    
    var result = await request("post", uri, Episode.fromJsonLess, headers: headers, body: episode);
    return result as Episode;
  }

  Future<Episode> getEpisode(int id) async {
    var uri = constructUri(url, "/v1/cartoons/episodes/$id/");

    var episode = await request("get", uri, Episode.fromJson);
    return episode as Episode;
  }

  Future<Episode> updateEpisode(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/cartoons/episodes/$id/");
    var headers = constructHeaders(accessToken);

    var episode = await request("patch", uri, Episode.fromJsonLess, headers: headers, body: values);
    return episode as Episode;
  }

  // ----------------------- CHARACTERS -----------------------

  Future<Results<Character>> getCharacters({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/characters/", parameters: params);

    var results = await request("get", uri, Results<Character>.fromJson, arg: Character.fromJson);
    return results as Results<Character>;
  }

  Future<Character> addCharacter(String? accessToken, String character) async {
    var uri = constructUri(url, "/v1/cartoons/characters/");
    var headers = constructHeaders(accessToken);
    
    var result = await request("post", uri, Character.fromJson, headers: headers, body: character);
    return result as Character;
  }

  Future<Character> getCharacter(int id) async {
    var uri = constructUri(url, "/v1/cartoons/characters/$id/");

    var character = await request("get", uri, Character.fromJson);
    return character as Character;
  }

  Future<Character> updateCharacter(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/cartoons/characters/$id/");
    var headers = constructHeaders(accessToken);

    var character = await request("patch", uri, Character.fromJson, headers: headers, body: values);
    return character as Character;
  }

  // ----------------------- NETWORKS -----------------------

  Future<Results<Network>> getNetworks({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/networks/", parameters: params);

    var results = await request("get", uri, Results<Network>.fromJson, arg: Network.fromJson);
    return results as Results<Network>;
  }

  Future<Network> addNetwork(String? accessToken, String network) async {
    var uri = constructUri(url, "/v1/cartoons/networks/");
    var headers = constructHeaders(accessToken);
    
    var result = await request("post", uri, Network.fromJson, headers: headers, body: network);
    return result as Network;
  }

  Future<Network> getNetwork(int id) async {
    var uri = constructUri(url, "/v1/cartoons/networks/$id/");

    var network = await request("get", uri, Network.fromJson);
    return network as Network;
  }

  Future<Network> updateNetwork(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/cartoons/networks/$id/");
    var headers = constructHeaders(accessToken);

    var network = await request("patch", uri, Network.fromJson, headers: headers, body: values);
    return network as Network;
  }

  // ----------------------- VOICE ACTORS -----------------------

  Future<Results<VoiceActor>> getVoiceActors({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/actors/", parameters: params);

    var results = await request("get", uri, Results<VoiceActor>.fromJson, arg: VoiceActor.fromJson);
    return results as Results<VoiceActor>;
  }

  Future<VoiceActor> addVoiceActor(String? accessToken, String voiceActor) async {
    var uri = constructUri(url, "/v1/cartoons/actors/");
    var headers = constructHeaders(accessToken);
    
    var result = await request("post", uri, VoiceActor.fromJson, headers: headers, body: voiceActor);
    return result as VoiceActor;
  }

  Future<VoiceActor> getVoiceActor(int id) async {
    var uri = constructUri(url, "/v1/cartoons/actors/$id/");

    var voiceActor = await request("get", uri, VoiceActor.fromJson);
    return voiceActor as VoiceActor;
  }

  Future<VoiceActor> updateVoiceActor(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/cartoons/actors/$id/");
    var headers = constructHeaders(accessToken);

    var voiceActor = await request("patch", uri, VoiceActor.fromJson, headers: headers, body: values);
    return voiceActor as VoiceActor;
  }

  // ----------------------- TEAMS -----------------------

  Future<Results<Team>> getTeams({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/teams/", parameters: params);

    var results = await request("get", uri, Results<Team>.fromJson, arg: Team.fromJson);
    return results as Results<Team>;
  }

  Future<Team> addTeam(String? accessToken, String team) async {
    var uri = constructUri(url, "/v1/cartoons/teams/");
    var headers = constructHeaders(accessToken);
    
    var result = await request("post", uri, Team.fromJson, headers: headers, body: team);
    return result as Team;
  }

  Future<Team> getTeam(int id) async {
    var uri = constructUri(url, "/v1/cartoons/teams/$id/");

    var team = await request("get", uri, Team.fromJson);
    return team as Team;
  }

  Future<Team> updateTeam(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/cartoons/teams/$id/");
    var headers = constructHeaders(accessToken);

    var team = await request("patch", uri, Team.fromJson, headers: headers, body: values);
    return team as Team;
  }

  // ----------------------- LOCATIONS -----------------------

  Future<Results<Location>> getLocations({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/locations/", parameters: params);

    var results = await request("get", uri, Results<Location>.fromJson, arg: Location.fromJson);
    return results as Results<Location>;
  }

  Future<Location> addLocation(String? accessToken, String location) async {
    var uri = constructUri(url, "/v1/cartoons/locations/");
    var headers = constructHeaders(accessToken);
    
    var result = await request("post", uri, Location.fromJson, headers: headers, body: location);
    return result as Location;
  }

  Future<Location> getLocation(int id) async {
    var uri = constructUri(url, "/v1/cartoons/locations/$id/");

    var location = await request("get", uri, Location.fromJson);
    return location as Location;
  }

  Future<Location> updateLocation(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/cartoons/locations/$id/");
    var headers = constructHeaders(accessToken);

    var location = await request("patch", uri, Location.fromJson, headers: headers, body: values);
    return location as Location;
  }

  // ----------------------- GENRES -----------------------

  Future<Results<Genre>> getGenres({Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/cartoons/genres/", parameters: params);

    var result = await request("get", uri, Results<Genre>.fromJson, arg: Genre.fromJson);
    return result as Results<Genre>;
  }

  Future<Genre> getGenre(int id) async {
    var uri = constructUri(url, "/v1/cartoons/genres/$id/");

    var genre = await request("get", uri, Genre.fromJson);
    return genre as Genre;
  }
}