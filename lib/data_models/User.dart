import 'package:flutter/foundation.dart';

class User {
  String id;
  String name;
  List<String> channels;
  String photo;
  bool isAdmin;
  bool online;

  User({
    @required this.id,
    @required this.name,
    this.channels,
    this.photo,
    @required this.isAdmin,
    this.online,
  });
}
