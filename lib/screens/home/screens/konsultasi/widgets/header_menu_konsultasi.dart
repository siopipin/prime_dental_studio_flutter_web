import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class HeaderMenuKonsultasi extends StatefulWidget {
  HeaderMenuKonsultasi({Key key}) : super(key: key);

  @override
  _HeaderMenuKonsultasiState createState() => _HeaderMenuKonsultasiState();
}

class _HeaderMenuKonsultasiState extends State<HeaderMenuKonsultasi> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black45,
      textStyle: TextStyle(color: Colors.white),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 50,
        color: cMain,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.chat),
            SizedBox(width: 10),
            Text('Konsultasi Kesehatan Gigi dan Mulut',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
          ],
        ),
      ),
    );
  }
}
