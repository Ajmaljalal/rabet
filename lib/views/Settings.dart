import 'package:flutter/material.dart';

class UserSettings extends StatefulWidget {
  @override
  _UserSettingsState createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    print('in settings build');
    return Scaffold(
      body: Center(
        child: Text('settings'),
      ),
    );
  }
}
