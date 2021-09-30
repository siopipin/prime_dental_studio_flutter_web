import 'package:admin/constants.dart';
import 'package:admin/screens/home/screens/konsultasi/widgets/slider_konsultasi.dart';
import 'package:flutter/material.dart';

class InfoKonsultasi extends StatelessWidget {
  const InfoKonsultasi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: kHomeDarkBlackColor,
          height: MediaQuery.of(context).size.height / 2 + 100,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Konsultasi dengan Dokter gigi',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18, color: cMain),
              ),
              SizedBox(height: 10),
              Text(
                  'Syarat dan Ketentuan berlaku untuk konsultasi \ngratis dengan dokter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12)),
              SizedBox(height: 10),
              SliderKonsultasi(),
              Spacer(),
            ],
          ),
        ));
  }
}
