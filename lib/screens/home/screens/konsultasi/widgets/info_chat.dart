import 'package:admin/screens/home/screens/konsultasi/widgets/left_chat.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class InfoChat extends StatefulWidget {
  InfoChat({Key key}) : super(key: key);

  @override
  _InfoChatState createState() => _InfoChatState();
}

class _InfoChatState extends State<InfoChat> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(right: 18, top: 10, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(height: 30),
            Flexible(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Container(
                    width: 270,
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: Text(
                      'Hallo, selamat datang. Ada bisa dibantu?',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
    ;
  }
}
