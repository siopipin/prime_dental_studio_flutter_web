import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile';
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Center'),
        ),
      ),
    );
  }
}
