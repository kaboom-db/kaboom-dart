class LoginToken {
  String? token;
  String? username;
  int? userId;
  String? email;
  String? image;

  LoginToken({this.token, this.username, this.userId, this.email, this.image});

  LoginToken.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    username = json['username'];
    userId = json['user_id'];
    email = json['email'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['username'] = username;
    data['user_id'] = userId;
    data['email'] = email;
    data['image'] = image;
    return data;
  }
}