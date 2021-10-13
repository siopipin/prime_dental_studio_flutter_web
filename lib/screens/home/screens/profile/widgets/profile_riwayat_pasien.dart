import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class ProfileRiwayatPasien extends StatefulWidget {
  ProfileRiwayatPasien({Key key}) : super(key: key);

  @override
  _ProfileRiwayatPasienState createState() => _ProfileRiwayatPasienState();
}

class _ProfileRiwayatPasienState extends State<ProfileRiwayatPasien> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [itemCard(), itemCard(), itemCard()],
      ),
    );
  }

  itemCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: secondaryColor.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 7,
                offset: Offset(2, 3))
          ]),
      child: Column(
        children: [
          //Info General
          Row(
            children: [
              Icon(Icons.shopping_basket_outlined, color: cMain),
              SizedBox(width: 10),
              Text('Transaksi'),
              SizedBox(width: 10),
              Text('12 Okt 2021'),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.green[200]),
                child: Text('Selesai',
                    style: TextStyle(
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 11)),
              ),
              SizedBox(width: 10),
              Text('VII0090/090-001'),
            ],
          ),

          //info item
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //gambar
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        'https://wpcdn.us-east-1.vip.tn-cloud.net/www.pittsburghparent.com/content/uploads/data-import/14250f76/tooth.jpg'),
                  ),
                  SizedBox(width: 15),
                  //detail
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pencabutan Gigi dengan Anestesi',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('2 Gigi x Rp.50.000')
                    ],
                  ),
                ],
              ),

              //total belanja
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Text('Total Belanja'),
                    Text('Rp.100.000',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
