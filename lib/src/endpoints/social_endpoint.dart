import 'package:kaboom_dart/src/endpoints/base.dart';
import 'package:kaboom_dart/src/models/accounts_models.dart';
import 'package:kaboom_dart/src/models/results.dart';
import 'package:kaboom_dart/src/models/social_models.dart';

class SocialEndpoint extends Endpoint {
  String url = "";
  
  SocialEndpoint(this.url);

  // ----------------------- USERS -----------------------

  Future<Follow> followUser(String? accessToken, String username) async {
    var uri = constructUri(url, "/v1/accounts/users/$username/follow/");
    var headers = constructHeaders(accessToken);

    var follow = await request("post", uri, Follow.fromJson, headers: headers);
    return follow as Follow;
  }

  Future<Success> unfollowUser(String? accessToken, String username) async {
    var uri = constructUri(url, "/v1/accounts/users/$username/unfollow/");
    var headers = constructHeaders(accessToken);

    var status = await request("post", uri, Success.fromJson, headers: headers);
    return status as Success;
  }

  Future<Results<User>> getFollowers(String? accessToken, String username) async {
    var uri = constructUri(url, "/v1/accounts/users/$username/followers/");
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<User>.fromJson, arg: User.fromJson, headers: headers);
    return results as Results<User>;
  }

  Future<Results<User>> getFollowing(String? accessToken, String username) async {
    var uri = constructUri(url, "/v1/accounts/users/$username/following/");
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<User>.fromJson, arg: User.fromJson, headers: headers);
    return results as Results<User>;
  }

  // ----------------------- THOUGHTS -----------------------

  Future<Results<Thought>> getThoughts(String? accessToken, {Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/social/thoughts/", parameters: params);
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<Thought>.fromJson, arg: Thought.fromJson, headers: headers);
    return results as Results<Thought>;
  }

  Future<Thought> addThought(String? accessToken, String thought) async {
    var uri = constructUri(url, "/v1/social/thoughts/");
    var headers = constructHeaders(accessToken);

    var result = await request("post", uri, Thought.fromJsonLess, headers: headers, body: thought);
    return result as Thought;
  }

  Future<Thought> getThought(String? accessToken, int id) async {
    var uri = constructUri(url, "/v1/social/thoughts/$id/");
    var headers = constructHeaders(accessToken);

    var thought = await request("get", uri, Thought.fromJson, headers: headers);
    return thought as Thought;
  }

  Future<Thought> updateThought(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/social/thoughts/$id/");
    var headers = constructHeaders(accessToken);

    var thought = await request("patch", uri, Thought.fromJsonLess, headers: headers, body: values);
    return thought as Thought;
  }

  // ----------------------- COMMENTS -----------------------

  Future<Results<Comment>> getComments(String? accessToken, int thoughtId, {Map<String, dynamic> params = const <String, dynamic>{}}) async {
    var uri = constructUri(url, "/v1/social/thoughts/$thoughtId/comments/", parameters: params);
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<Comment>.fromJson, arg: Comment.fromJson, headers: headers);
    return results as Results<Comment>;
  }

  Future<Comment> addComment(String? accessToken, int thoughtId, String comment) async {
    var uri = constructUri(url, "/v1/social/thoughts/$thoughtId/comments/");
    var headers = constructHeaders(accessToken);

    var result = await request("post", uri, Comment.fromJsonLess, headers: headers, body: comment);
    return result as Comment;
  }

  Future<Comment> getComment(String? accessToken, int id) async {
    var uri = constructUri(url, "/v1/social/comments/$id/");
    var headers = constructHeaders(accessToken);

    var comment = await request("get", uri, Comment.fromJson, headers: headers);
    return comment as Comment;
  }

  Future<Comment> updateComment(String? accessToken, int id, String values) async {
    var uri = constructUri(url, "/v1/social/comments/$id/");
    var headers = constructHeaders(accessToken);

    var comment = await request("patch", uri, Comment.fromJsonLess, headers: headers, body: values);
    return comment as Comment;
  }

  // ----------------------- FEED -----------------------

  Future<Results<Thought>> feedThoughts(String? accessToken, {int page = 1}) async {
    var uri = constructUri(url, "/v1/social/feed/", parameters: {"type": "thought", "page": page.toString()});
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<Thought>.fromJson, arg: Thought.fromJson, headers: headers);
    return results as Results<Thought>;
  }

  Future<Results<WatchedEpisode>> feedEpisodes(String? accessToken, {int page = 1}) async {
    var uri = constructUri(url, "/v1/social/feed/", parameters: {"type": "episode", "page": page.toString()});
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<WatchedEpisode>.fromJson, arg: WatchedEpisode.fromJson, headers: headers);
    return results as Results<WatchedEpisode>;
  }

  Future<Results<CartoonSubscription>> feedCartoons(String? accessToken, {int page = 1}) async {
    var uri = constructUri(url, "/v1/social/feed/", parameters: {"type": "cartoon", "page": page.toString()});
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<CartoonSubscription>.fromJson, arg: CartoonSubscription.fromJson, headers: headers);
    return results as Results<CartoonSubscription>;
  }

  Future<Results<ReadIssue>> feedIssues(String? accessToken, {int page = 1}) async {
    var uri = constructUri(url, "/v1/social/feed/", parameters: {"type": "issue", "page": page.toString()});
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<ReadIssue>.fromJson, arg: ReadIssue.fromJson, headers: headers);
    return results as Results<ReadIssue>;
  }

  Future<Results<ComicSubscription>> feedComics(String? accessToken, {int page = 1}) async {
    var uri = constructUri(url, "/v1/social/feed/", parameters: {"type": "comic", "page": page.toString()});
    var headers = constructHeaders(accessToken);

    var results = await request("get", uri, Results<ComicSubscription>.fromJson, arg: ComicSubscription.fromJson, headers: headers);
    return results as Results<ComicSubscription>;
  }
}