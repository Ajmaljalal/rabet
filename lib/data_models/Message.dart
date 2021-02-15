import 'package:flutter/material.dart';
import './User.dart';

class Message {
  String id;
  String channelId;
  String date = DateTime.now().toString();
  String text;
  User owner;
  int repliesCount;
  int likesCount;
  List<String> images;
  String location;
  bool forwarded;
  bool isNew;

  Message({
    this.id,
    this.channelId,
    @required this.text,
    this.owner,
    this.date,
    this.repliesCount = 0,
    this.likesCount = 0,
    this.forwarded = false,
    this.images,
    this.location,
    this.isNew,
  });

  factory Message.fromJson(Map<String, dynamic> json, String id) => Message(
        id: id,
        channelId: json["channelId"],
        text: json["text"],
        owner: json["owner"],
        date: json["date"].toString(),
        repliesCount: json["repliesCount"],
        likesCount: json["likesCount"],
        forwarded: json["forwarded"],
        images: json["images"],
        location: json["location"],
        isNew: json["isNew"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "channelId": channelId,
        "text": text,
        "owner": owner,
        "date": date,
        "repliesCount": repliesCount,
        "likesCount": likesCount,
        "forwarded": forwarded,
        "images": images,
        "location": location,
        "isNew": isNew,
      };
}
