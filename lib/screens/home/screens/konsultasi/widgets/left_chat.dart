import 'package:flutter/material.dart';
import 'dart:math' as math;

class ChatBubble extends CustomPainter {
  final Color bgColor;

  ChatBubble(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class LeftChat extends StatefulWidget {
  LeftChat({Key key}) : super(key: key);

  @override
  _LeftChatState createState() => _LeftChatState();
}

class _LeftChatState extends State<LeftChat> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 50.0, left: 18, top: 10, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(height: 30),
            messageTextGroup,
          ],
        ),
      ),
    );
  }

  final messageTextGroup = Flexible(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi),
        child: CustomPaint(
          painter: ChatBubble(Colors.grey[300]),
        ),
      ),
      Flexible(
        child: Container(
          width: 270,
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
          child: Text(
            'Oke Dok, berikutnya saya akan segera daftar untuk konsultasi ya',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    ],
  ));
}
