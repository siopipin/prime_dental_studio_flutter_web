import 'package:flutter/material.dart';

class ItemServices extends StatefulWidget {
  ItemServices({Key key}) : super(key: key);

  @override
  _ItemServicesState createState() => _ItemServicesState();
}

class _ItemServicesState extends State<ItemServices> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Text('Item'),
    );
  }
}
