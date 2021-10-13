import 'dart:html';

import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class ListProdukKeranjang extends StatefulWidget {
  ListProdukKeranjang({Key key}) : super(key: key);

  @override
  _ListProdukKeranjangState createState() => _ListProdukKeranjangState();
}

class _ListProdukKeranjangState extends State<ListProdukKeranjang> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
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
              alamatPenerima(),
              SizedBox(height: 30),
              Divider(),
              Text('Keranjang',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Divider(),
              listProduk(),
              listProduk(),
              listProduk(),
              listProduk(),
            ],
          ),
        ));
  }

  listProduk() {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //info
            Row(
              children: [
                //Gambar
                Container(
                  width: 60.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://i0.wp.com/newdoorfiji.com/wp-content/uploads/2018/03/profile-img-1.jpg?ssl=1'")),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: bgColor,
                  ),
                ),
                SizedBox(width: 10),

                //Deskripsi
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama Produk'),
                    Text('Rp. 19.000',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Tambah catatan disini',
                        style: TextStyle(
                            color: cMain, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),

            //aksi hapus
            aksi()
          ],
        ),
        Divider()
      ],
    ));
  }

  aksi() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.remove_circle),
            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                width: 20,
                child: TextField(
                  controller: TextEditingController(text: '1'),
                )),
            Icon(Icons.add_circle),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(4)),
          padding: EdgeInsets.all(3),
          child: Align(
            alignment: Alignment.center,
            child: Text('Hapus',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12)),
          ),
        )
      ],
    );
  }

  alamatPenerima() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Alamat Penerima',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Divider(),
        Text(
          'Citra Eka Setriani Halawa (Rumah)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('08227867908'),
        Text(
          'Trendy Salon, Sidorejo, Kec. Medan Tembung, Kota Medan, Sumatera Utara [Tokopedia Note: jalan Perjuangan no 46, dekat parit busuk, medan perjuangan]',
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
        ),
        Text(
          'Medan Tembung, Kota Medan, 20222',
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
        ),
        Container(
          width: 230,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: cMain),
              child: Align(
                alignment: Alignment.center,
                child: Text('Pilih Alamat Lain'),
              )),
        )
      ],
    );
  }
}
