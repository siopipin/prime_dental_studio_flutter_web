import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  Promo({Key key}) : super(key: key);

  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kHomeDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Penawaran Menarik")],
      ),
    );
  }
}
