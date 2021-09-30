import 'package:admin/constants.dart';
import 'package:admin/screens/home/main/components/footer.dart';
import 'package:admin/screens/home/main/components/home_main_header.dart';
import 'package:admin/screens/home/main/components/home_main_side_menu.dart';
import 'package:admin/screens/home/providers/home_provider.dart';
import 'package:admin/screens/home/screens/konsultasi/widgets/info_konsultasi.dart';
import 'package:admin/screens/home/screens/konsultasi/widgets/menu_konsultasi.dart';
import 'package:flutter/material.dart';

class KonsultasiScreen extends StatefulWidget {
  static const String route = '/konsultasi';

  KonsultasiScreen({Key key}) : super(key: key);

  @override
  _KonsultasiScreenState createState() => _KonsultasiScreenState();
}

class _KonsultasiScreenState extends State<KonsultasiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeMainSideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeMainHeader(),
            Container(
                padding: EdgeInsets.all(kHomeDefaultPadding),
                constraints: BoxConstraints(maxWidth: kHomeMaxWidth),
                child: SafeArea(
                  child: Row(
                    children: [
                      //Info kiri
                      InfoKonsultasi(),

                      //Konsultasi kanan
                      MenuKonsultasi()
                    ],
                  ),
                )),

            //Footer
            FooterHome()
          ],
        ),
      ),
    );
  }
}
