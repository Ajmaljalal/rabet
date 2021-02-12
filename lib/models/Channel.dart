import 'package:flutter/foundation.dart';

class Channel {
  String id;
  String name;
  List<String> members;
  bool private;
  String icon;
  int messageCount;

  Channel({
    @required this.id,
    @required this.name,
    this.members,
    @required this.private,
    this.icon,
    this.messageCount = 0,
  });
}
