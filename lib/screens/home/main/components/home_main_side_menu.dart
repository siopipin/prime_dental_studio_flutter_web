import 'package:admin/constants.dart';
import 'package:admin/screens/home/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeMainSideMenu extends StatefulWidget {
  HomeMainSideMenu({Key key}) : super(key: key);

  @override
  _HomeMainSideMenuState createState() => _HomeMainSideMenuState();
}

class _HomeMainSideMenuState extends State<HomeMainSideMenu> {
  @override
  Widget build(BuildContext context) {
    final providerHome = Provider.of<HomeProvider>(context);
    return Drawer(
      child: Container(
        color: kHomeDarkBlackColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kHomeDefaultPadding * 3.5),
                child: SvgPicture.asset("assets/home/icons/logo.svg"),
              ),
            ),
            ...List.generate(
              providerHome.menuItems.length,
              (index) => DrawerItem(
                isActive: index == providerHome.selectedIndex,
                title: providerHome.menuItems[index],
                press: () {
                  providerHome.setMenuIndex(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key key,
    @required this.title,
    @required this.isActive,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kHomeDefaultPadding),
        selected: isActive,
        selectedTileColor: kHomePrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
