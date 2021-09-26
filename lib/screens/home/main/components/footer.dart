import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class FooterHome extends StatelessWidget {
  const FooterHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      color: kHomeDarkBlackColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('all right reserved', style: TextStyle(fontSize: 11)),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/home/icons/logo_prime_dental.png",
                width: 135),
          ),
        ],
      ),
    );
  }
}
