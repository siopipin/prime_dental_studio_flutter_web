import 'package:admin/constants.dart';
import 'package:admin/screens/home/home_screen.dart';
import 'package:admin/screens/home/main/components/home_main_header.dart';
import 'package:admin/screens/home/main/components/home_main_side_menu.dart';
import 'package:admin/screens/home/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerHome = Provider.of<HomeProvider>(context);

    return Scaffold(
      key: providerHome.scaffoldkey,
      drawer: HomeMainSideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeMainHeader(),
            Container(
              padding: EdgeInsets.all(kHomeDefaultPadding),
              constraints: BoxConstraints(maxWidth: kHomeMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
