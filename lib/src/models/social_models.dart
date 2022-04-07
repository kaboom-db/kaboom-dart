import 'package:kaboom_dart/src/models/accounts_models.dart';

class Follow {
  int? id;
  int? follower;
  int? following;

  Follow({this.id, this.follower, this.following});

  Follow.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    follower = json['follower'];
    following = json['following'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['follower'] = follower;
    data['following'] = following;
    return data;
  }
}

class Thought {
  int? id;
  User? user;
  int? userId;
  String? title;
  String? postContent;
  String? dateCreated;
  String? thoughtType;
  int? relatedObjectId;

  Thought(
      {this.id,
      this.user,
      this.title,
      this.postContent,
      this.dateCreated,
      this.thoughtType,
      this.relatedObjectId});

  Thought.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    title = json['title'];
    postContent = json['post_content'];
    dateCreated = json['date_created'];
    thoughtType = json['thought_type'];
    relatedObjectId = json['related_object_id'];
  }

  Thought.fromJsonLess(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user'];
    title = json['title'];
    postContent = json['post_content'];
    dateCreated = json['date_created'];
    thoughtType = json['thought_type'];
    relatedObjectId = json['related_object_id'];
  }
}

class Comment {
  int? id;
  User? user;
  int? userId;
  String? commentContent;
  String? dateCreated;
  int? thought;

  Comment(
      {this.id,
      this.user,
      this.commentContent,
      this.dateCreated,
      this.thought});

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    commentContent = json['comment_content'];
    dateCreated = json['date_created'];
    thought = json['thought'];
  }

  Comment.fromJsonLess(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user'];
    commentContent = json['comment_content'];
    dateCreated = json['date_created'];
    thought = json['thought'];
  }
}