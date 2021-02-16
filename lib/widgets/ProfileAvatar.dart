import 'package:flutter/material.dart';
import 'package:raabita/data_models/Message.dart';

class ProfileAvatar extends StatelessWidget {
  final Message message;
  const ProfileAvatar({
    this.message,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
      ),
      child: Center(
        child: Text(
          message?.text[0].toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
