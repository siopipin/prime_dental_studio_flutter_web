import 'package:admin/screens/home/screens/konsultasi/widgets/info_chat.dart';
import 'package:admin/screens/home/screens/konsultasi/widgets/left_chat.dart';
import 'package:flutter/material.dart';

class ChatKonsultasi extends StatefulWidget {
  ChatKonsultasi({Key key}) : super(key: key);

  @override
  _ChatKonsultasiState createState() => _ChatKonsultasiState();
}

class _ChatKonsultasiState extends State<ChatKonsultasi> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [InfoChat(), LeftChat()],
      ),
    );
  }
}
