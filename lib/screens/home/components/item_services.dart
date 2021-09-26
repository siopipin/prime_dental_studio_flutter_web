import 'package:admin/constants.dart';
import 'package:admin/screens/home/components/item_service_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ItemServices extends StatefulWidget {
  ItemServices({Key key}) : super(key: key);

  @override
  _ItemServicesState createState() => _ItemServicesState();
}

class _ItemServicesState extends State<ItemServices> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Layanan dan Produk',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Temukan Informasi Layanan dan Produk Terpopuler',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          SizedBox(height: kHomeDefaultPadding),
          //Item List
          ItemServiceProduct(
            title: 'Pemasangan Behel Metal Gigi',
            desc: 'Behel metal dengan variasi warna dan kualitas terbaik',
            biaya: 'Rp.8.000.000,-',
          ),
          ItemServiceProduct(
            title: 'Cabut gigi',
            desc: 'Cabut Gigi dengan proses anestesi',
            biaya: 'Rp.300.000,-',
          ),
          ItemServiceProduct(
            title: 'Pasang Gigi Palsu',
            desc: 'Gigi Palsu kualitas terbaik dari berbagai bahan terbaik',
            biaya: 'Rp.500.000,-',
          ),
          ItemServiceProduct(
            title: 'Pemasangan Behel Metal Gigi',
            desc: 'Behel metal dengan variasi warna dan kualitas terbaik',
            biaya: 'Rp.8.000.000,-',
          )
        ],
      ),
    );
  }
}
