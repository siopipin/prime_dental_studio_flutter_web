import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/home/main/components/fitur.dart';
import 'package:admin/screens/home/screens/konsultasi/konsultasi_screen.dart';
import 'package:admin/screens/home/screens/konsultasi/providers/konsultasi_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeBannerFitur extends StatefulWidget {
  HomeBannerFitur({Key key}) : super(key: key);

  @override
  _HomeBannerFiturState createState() => _HomeBannerFiturState();
}

class _HomeBannerFiturState extends State<HomeBannerFitur> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provKonsultasi = Provider.of<KonsultasiProvider>(context);
    return Container(
      child: Row(
        children: [
          //fitur
          Expanded(
              flex: 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Solusi layanan mulut dan gigi sehat",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kHomeDefaultPadding),
                      child: Text(
                        "Layanan kesehatan mulut dan gigi, konsultasi, booking jadwal perawatan, cek riwayat perawatan \npemesanan produk dan update informasi seputar kesehatan.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          height: 1.5,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Fitur(
                            path: 'assets/home/icons/service.png',
                            name: "Layanan\nKesehatan"),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () {
                                provKonsultasi.setFiturEnable(true);
                                Navigator.pushNamed(
                                  context,
                                  KonsultasiScreen.route,
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: kHomeDefaultPadding / 2),
                                decoration: BoxDecoration(
                                    color: provKonsultasi.fiturEnable
                                        ? Colors.green[100]
                                        : Colors.white38,
                                    borderRadius: BorderRadius.circular(14)),
                                width: 100,
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/home/icons/chat.png',
                                      width: 40,
                                    ),
                                    Text(
                                      "Konsultasi\nKesehatan",
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Fitur(
                            path: 'assets/home/icons/jadwal.png',
                            name: "Buat\nPerjanjian"),
                        Fitur(
                            path: 'assets/home/icons/history.png',
                            name: "Riwayat\nKesehatan"),
                        if (!Responsive.isMobile(context))
                          Fitur(
                              path: 'assets/home/icons/order.png',
                              name: "Pemesanan\nProduk"),
                      ],
                    )
                  ])),

          //banner
          if (!Responsive.isMobile(context))
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/home/icons/dentist.svg",
                      width: 150,
                    ),
                    FittedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Yuk cek kesehatan gigi!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: kHomeDefaultPadding / 2),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
        ],
      ),
    );
  }
}
