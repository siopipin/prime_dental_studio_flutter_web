import 'package:admin/responsive.dart';
import 'package:admin/screens/home/components/book_online.dart';
import 'package:admin/screens/home/components/excellence.dart';
import 'package:admin/screens/home/components/item_services.dart';
import 'package:admin/screens/home/components/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Excellence(),
        if (!Responsive.isMobile(context)) SizedBox(width: kHomeDefaultPadding),
        SearchBar(),
        SizedBox(height: kHomeDefaultPadding),
        Row(
          children: [
            ///Book Online
            BookOnline(),

            SizedBox(width: kHomeDefaultPadding),

            ///Item Service
            ItemServices()
          ],
        )
        // Sidebar
      ],
    );
  }
}
