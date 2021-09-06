import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

class HeaderAction extends StatelessWidget {
  const HeaderAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          Image.asset("assets/home/icons/instagram.png",
              color: Colors.white, width: 30),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kHomeDefaultPadding / 2),
            child: Image.asset("assets/home/icons/facebook.png",
                color: Colors.white, width: 30),
          ),
        SizedBox(width: kHomeDefaultPadding),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kMainColor,
            padding: EdgeInsets.symmetric(
              horizontal: kHomeDefaultPadding * 1.5,
              vertical:
                  kHomeDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
          child: Text("Buat Jadwal"),
        ),
        SizedBox(width: kHomeDefaultPadding),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: kHomeDefaultPadding * 1.5,
              vertical:
                  kHomeDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
          child: Text("Login"),
        ),
      ],
    );
  }
}
