import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class RingkasanBelanja extends StatefulWidget {
  RingkasanBelanja({Key key}) : super(key: key);

  @override
  _RingkasanBelanjaState createState() => _RingkasanBelanjaState();
}

class _RingkasanBelanjaState extends State<RingkasanBelanja> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.all(kHomeDefaultPadding),
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: secondaryColor.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(1, 3))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ringkasan Belanja',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Total Harga (5 barang)'), Text('Rp75.000')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Diskon'), Text('Rp175.000')],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Rp375.000',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: cMain),
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Lanjut'),
                  ))
            ],
          ),
        ));
  }
}
