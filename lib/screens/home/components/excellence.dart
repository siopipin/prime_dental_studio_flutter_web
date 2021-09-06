import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

class Excellence extends StatelessWidget {
  const Excellence({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kHomeDefaultPadding),
      child: Responsive.isDesktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemExcellence(
                    title: "Experienced Doctors",
                    desc: "drg terbaik dibidangnya",
                    path: "assets/home/icons/doctor.png"),
                ItemExcellence(
                    title: "Painless Treatments",
                    desc: "Perawatan yang nyaman dimulut",
                    path: "assets/home/icons/tooth.png"),
                ItemExcellence(
                    title: "Top Dental Equipment",
                    desc: "Alat canggih untuk gigi dan mulut",
                    path: "assets/home/icons/tools.png"),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MobileItemExcellence(
                    title: "Experienced Doctors",
                    desc: "drg terbaik dibidangnya",
                    path: "assets/home/icons/doctor.png"),
                MobileItemExcellence(
                    title: "Painless Treatments",
                    desc: "Perawatan yang nyaman dimulut",
                    path: "assets/home/icons/tooth.png"),
                MobileItemExcellence(
                    title: "Top Dental Equipment",
                    desc: "Alat canggih untuk gigi dan mulut",
                    path: "assets/home/icons/tools.png"),
              ],
            ),
    );
  }
}

class ItemExcellence extends StatelessWidget {
  final String title;
  final String path;
  final String desc;
  const ItemExcellence(
      {Key key, @required this.path, @required this.title, @required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(kHomeDefaultPadding),
      margin: EdgeInsets.only(right: kHomeDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kHomeDarkBlackColor,
        boxShadow: [
          BoxShadow(
            color: kHomeDarkBlackColor.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
              child: Image.asset(
            path,
            width: 50,
          )),
          SizedBox(width: kHomeDefaultPadding / 2),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: kMainColor, fontWeight: FontWeight.bold)),
                  Text(desc, style: TextStyle(color: Colors.white60))
                ],
              ))
        ],
      ),
    ));
  }
}

class MobileItemExcellence extends StatelessWidget {
  final String title;
  final String path;
  final String desc;
  const MobileItemExcellence(
      {Key key, @required this.path, @required this.title, @required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(kHomeDefaultPadding),
        margin: EdgeInsets.only(right: kHomeDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kHomeDarkBlackColor,
          boxShadow: [
            BoxShadow(
              color: kHomeDarkBlackColor.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(children: [
          Container(
              child: Image.asset(
            path,
            width: 50,
          )),
          SizedBox(width: kHomeDefaultPadding / 2),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(title), Text(desc)],
              ))
        ]));
  }
}
