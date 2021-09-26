import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class ItemServiceProduct extends StatelessWidget {
  final String title;
  final String desc;
  final String biaya;
  const ItemServiceProduct(
      {Key key,
      @required this.title,
      @required this.desc,
      @required this.biaya})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cPurpleWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Icon(
              Icons.shopping_bag_rounded,
              color: cTextItem,
              size: 35,
            ),
          ),
          SizedBox(width: 5),
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: cTextItem, fontSize: 11),
                  )
                ],
              )),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Estimasi Biaya',
                  style: TextStyle(
                      color: Colors.black.withOpacity(1), fontSize: 11),
                ),
                Text(
                  biaya,
                  style: TextStyle(color: cTextItem),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
