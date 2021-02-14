import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Channel {
  String id;
  String name;
  List<dynamic> members;
  bool private;
  String icon;
  int messageCount;
  String date = DateTime.now().toString();

  Channel({
    this.id,
    @required this.name,
    this.members,
    @required this.private,
    this.icon,
    this.messageCount = 0,
    this.date,
  });

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
        id: json['id'],
        name: json['name'],
        members: json["members"],
        private: json['private'],
        messageCount: json['messageCount'],
        icon: json["icon"],
        date: json["date"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "members": members,
        "private": private,
        "icon": icon,
        "messageCount": messageCount,
        "date": date,
      };
}
