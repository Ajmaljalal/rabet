import 'package:flutter/cupertino.dart';

import './User.dart';

class Message {
  String id;
  String channelId;
  int timestamp;
  String text;
  User user;
  int repliesCount;

  Message({
    @required this.id,
    this.channelId,
    @required this.text,
    this.timestamp,
    this.user,
    this.repliesCount,
  });
}
