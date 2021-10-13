import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/home/main/components/header_action.dart';
import 'package:admin/screens/home/main/components/logo.dart';
import 'package:admin/screens/home/main/components/web_menu.dart';
import 'package:admin/screens/home/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileHeader extends StatefulWidget {
  ProfileHeader({Key key}) : super(key: key);

  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    final providerHome = Provider.of<HomeProvider>(context);

    return Container(
      width: double.infinity,
      color: kHomeDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kHomeMaxWidth),
              padding: EdgeInsets.all(kHomeDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            providerHome.openOrCloseDrawer();
                          },
                        ),
                      Logo(),
                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // Socal
                      HeaderAction(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
