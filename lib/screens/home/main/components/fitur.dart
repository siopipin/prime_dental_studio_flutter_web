import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class Fitur extends StatefulWidget {
  final String path;
  final String name;
  const Fitur({Key key, @required this.path, @required this.name})
      : super(key: key);

  @override
  _FiturState createState() => _FiturState();
}

class _FiturState extends State<Fitur> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kHomeDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Colors.white38, borderRadius: BorderRadius.circular(14)),
      width: 100,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            widget.path,
            width: 40,
          ),
          Text(
            widget.name,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
