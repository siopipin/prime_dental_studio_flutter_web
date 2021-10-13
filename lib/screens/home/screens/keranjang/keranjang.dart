import 'package:admin/constants.dart';
import 'package:admin/screens/home/main/components/footer.dart';
import 'package:admin/screens/home/screens/keranjang/widgets/list_produk_keranjang.dart';
import 'package:admin/screens/home/screens/keranjang/widgets/ringkasan_belanja.dart';
import 'package:admin/screens/home/screens/profile/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class KeranjangScreen extends StatefulWidget {
  static const String route = '/keranjang';
  KeranjangScreen({Key key}) : super(key: key);

  @override
  _KeranjangScreenState createState() => _KeranjangScreenState();
}

class _KeranjangScreenState extends State<KeranjangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(),
          Container(
            padding: EdgeInsets.all(kHomeDefaultPadding),
            constraints: BoxConstraints(maxWidth: kHomeMaxWidth),
            child: SafeArea(child: keranjangPage()),
          ),

          //Footer
          FooterHome()
        ],
      ),
    ));
  }

  keranjangPage() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //List produk
          ListProdukKeranjang(),
          SizedBox(width: 30),

          //Ringkasan belanja
          RingkasanBelanja()
        ],
      ),
    );
  }
}
