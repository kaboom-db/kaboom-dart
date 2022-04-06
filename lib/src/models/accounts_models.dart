import 'package:kaboom_dart/src/models/cartoons_models.dart';
import 'package:kaboom_dart/src/models/comics_models.dart';

class User {
  String? username;
  int? id;
  String? image;
  DateTime? dateJoined;
  String? timeJoined;
  bool? isStaff;
  Userdata? userdata;

  User(
      {this.username,
      this.id,
      this.image,
      this.dateJoined,
      this.timeJoined,
      this.isStaff,
      this.userdata});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    id = json['id'];
    image = json['image'];
    dateJoined = DateTime.parse(json['date_joined']);
    timeJoined = json['time_joined'];
    isStaff = json['is_staff'];
    userdata = json['userdata'] != null
        ? Userdata.fromJson(json['userdata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['id'] = id;
    data['image'] = image;
    data['date_joined'] = dateJoined.toString();
    data['time_joined'] = timeJoined;
    data['is_staff'] = isStaff;
    if (userdata != null) {
      data['userdata'] = userdata?.toJson();
    }
    return data;
  }
}

class Userdata {
  String? bio;
  bool? private;

  Userdata({this.bio, this.private});

  Userdata.fromJson(Map<String, dynamic> json) {
    bio = json['bio'];
    private = json['private'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bio'] = bio;
    data['private'] = private;
    return data;
  }
}

class Report {
  int? id;
  String? objectType;
  int? objectId;
  String? status;
  String? message;
  int? user;

  Report(
      {this.id,
      this.objectType,
      this.objectId,
      this.status,
      this.message,
      this.user});

  Report.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    objectType = json['object_type'];
    objectId = json['object_id'];
    status = json['status'];
    message = json['message'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['object_type'] = objectType;
    data['object_id'] = objectId;
    data['status'] = status;
    data['message'] = message;
    data['user'] = user;
    return data;
  }
}

class ImageRequest {
  int? id;
  String? image;
  String? objectType;
  String? requestField;
  int? objectId;
  String? status;
  int? user;

  ImageRequest(
      {this.id,
      this.image,
      this.objectType,
      this.requestField,
      this.objectId,
      this.status,
      this.user});

  ImageRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    objectType = json['object_type'];
    requestField = json['request_field'];
    objectId = json['object_id'];
    status = json['status'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['object_type'] = objectType;
    data['request_field'] = requestField;
    data['object_id'] = objectId;
    data['status'] = status;
    data['user'] = user;
    return data;
  }
}

class ComicSubscription {
  int? id;
  User? user;
  int? userId;
  Comic? series;
  int? seriesId;
  double? rating;
  DateTime? dateCreated;

  ComicSubscription(
      {this.id, this.user, this.series, this.rating, this.dateCreated});

  ComicSubscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    series =
        json['series'] != null ? Comic.fromJson(json['series']) : null;
    rating = json['rating'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  ComicSubscription.fromJsonLess(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user'];
    seriesId = json['series'];
    rating = json['rating'];
    dateCreated = json['date_created'] != null ? DateTime.parse(json['date_created']) : null;
  }
}

class ReadIssue {
  int? id;
  User? user;
  int? userId;
  Issue? issue;
  int? issueId;
  DateTime? readAt;

  ReadIssue({this.id, this.user, this.issue, this.readAt});

  ReadIssue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    issue = json['issue'] != null ? Issue.fromJson(json['issue']) : null;
    readAt = json['read_at'] != null ? DateTime.parse(json['read_at']) : null;
  }

  ReadIssue.fromJsonLess(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user'];
    issueId = json['issue'];
    readAt = json['read_at'] != null ? DateTime.parse(json['read_at']) : null;
  }
}

class CartoonSubscription {
  int? id;
  User? user;
  int? userId;
  Cartoon? series;
  int? seriesId;
  double? rating;
  DateTime? dateCreated;

  CartoonSubscription(
      {this.id, this.user, this.series, this.rating, this.dateCreated});

  CartoonSubscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    series =
        json['series'] != null ? Cartoon.fromJson(json['series']) : null;
    rating = json['rating'];
    dateCreated = DateTime.parse(json['date_created']);
  }

  CartoonSubscription.fromJsonLess(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user'];
    seriesId = json['series'];
    rating = json['rating'];
    dateCreated = json['date_created'] != null ? DateTime.parse(json['date_created']) : null;
  }
}

class Success {
  String? success;

  Success({this.success});

  Success.fromJson(Map<String, dynamic> json) {
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    return data;
  }
}
