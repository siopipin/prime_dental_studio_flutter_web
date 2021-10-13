import 'package:admin/constants.dart';
import 'package:admin/screens/home/screens/profile/providers/profile_provider.dart';
import 'package:admin/screens/home/screens/profile/widgets/profile_riwayat_pasien.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileInfo extends StatefulWidget {
  ProfileInfo({Key key}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  void initState() {
    Future.microtask(() async {
      Provider.of<ProfileProvider>(context, listen: false).initialProfile();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final profileProv = Provider.of<ProfileProvider>(context);
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
                //Menu
                IntrinsicHeight(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    tabMenu(
                        text: 'Biodata Diri',
                        index: 1,
                        press: () => profileProv.setDefaultTabMenu(1)),
                    VerticalDivider(
                      width: 1,
                      thickness: 1.2,
                      color: Colors.white,
                    ),
                    tabMenu(
                        text: 'Riwayat Pasien',
                        index: 2,
                        press: () => profileProv.setDefaultTabMenu(2))
                  ],
                )

                    //detail menu
                    ),
                Divider(),
                profileProv.defaultTabMenu == 1
                    ? biodataDiri()
                    : ProfileRiwayatPasien()
              ],
            )));
  }

  tabMenu({@required String text, VoidCallback press, int index}) {
    final profileProv = Provider.of<ProfileProvider>(context);

    Color _borderColor() {
      if (profileProv.defaultTabMenu == index) {
        return cMain;
      } else {
        return Colors.transparent;
      }
    }

    return InkWell(
      onTap: press,
      onHover: (value) {
        print(value);
      },
      child: AnimatedContainer(
        duration: kHomeDefaultDuration,
        margin: EdgeInsets.symmetric(horizontal: kHomeDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kHomeDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  biodataDiri() {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Column(
              children: [
                ///Foto
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 2)
                      ]),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://i0.wp.com/newdoorfiji.com/wp-content/uploads/2018/03/profile-img-1.jpg?ssl=1'),
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Pilih Foto',
                                  style: TextStyle(color: cTextItem),
                                )),
                          ))
                    ],
                  ),
                ),

                SizedBox(height: kHomeDefaultPadding),

                //Ubah kata sandi
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Ubah Kata Sandi',
                            style: TextStyle(color: Colors.black87),
                          )),
                    ))
              ],
            )),
        Expanded(
          flex: 5,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Ubah Biodata Diri',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  infoBiodata(title: 'Nama', val: 'Citra Eka Halawa'),
                  infoBiodata(title: 'Tanggal Lahir', val: '18 Januari 1998'),
                  infoBiodata(title: 'Jenis Kelamin', val: 'Wanita'),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Text('Ubah Kontak',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  infoBiodata(title: 'Email', val: 'citra@gmail.com'),
                  infoBiodata(title: 'Nomor HP', val: '08799920001'),
                ],
              )),
        )
      ],
    );
  }

  infoBiodata({String title, String val}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(title),
          ),
          Text(val),
          SizedBox(
            width: 10,
          ),
          Text(
            'Ubah',
            style: TextStyle(color: cMain),
          )
        ],
      ),
    );
  }
}
