import 'package:admin/constants.dart';
import 'package:admin/screens/home/screens/konsultasi/widgets/chat.dart';
import 'package:admin/screens/home/screens/konsultasi/widgets/header_menu_konsultasi.dart';
import 'package:flutter/material.dart';

class MenuKonsultasi extends StatefulWidget {
  MenuKonsultasi({Key key}) : super(key: key);

  @override
  _MenuKonsultasiState createState() => _MenuKonsultasiState();
}

class _MenuKonsultasiState extends State<MenuKonsultasi> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 2 + 100,
            child: Material(
              color: Colors.white,
              textStyle: TextStyle(color: Colors.black87),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderMenuKonsultasi(),
                  ChatKonsultasi(),
                  Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(
                                    bottom: kHomeDefaultPadding / 2),
                                decoration: BoxDecoration(
                                    color: kHomeDarkBlackColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      hintStyle: TextStyle(color: Colors.white),
                                      hintText: 'Pesan..',
                                      prefixIcon: Icon(
                                        Icons.format_quote,
                                        color: Colors.white,
                                      )),
                                ),
                              )),
                              SizedBox(width: 10),
                              Icon(Icons.send, color: kHomeDarkBlackColor)
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )));
  }
}
