// To parse this JSON data, do
//
//     final postApiModel = postApiModelFromJson(jsonString);

import 'dart:convert';

List<PostApiModel> postApiModelFromJson(String str) => List<PostApiModel>.from(
    json.decode(str).map((x) => PostApiModel.fromJson(x)));

String postApiModelToJson(List<PostApiModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostApiModel {
  int userId;
  int id;
  String title;
  String body;

  PostApiModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostApiModel.fromJson(Map<String, dynamic> json) => PostApiModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
