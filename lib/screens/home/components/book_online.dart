import 'package:admin/constants.dart';
import 'package:admin/screens/home/providers/home_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookOnline extends StatefulWidget {
  BookOnline({Key key}) : super(key: key);

  @override
  _BookOnlineState createState() => _BookOnlineState();
}

class _BookOnlineState extends State<BookOnline> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kHomeDarkBlackColor),
        padding: EdgeInsets.all(kHomeDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Booking Online',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(
              height: kHomeDefaultPadding / 2,
            ),
            _textInput(
                text: "Name", icon: Icons.supervised_user_circle_rounded),
            _textInput(text: "HP", icon: Icons.phone_android),
            _dropDownInput(text: "Gender", icon: Icons.people),
            _dropDownInputService(text: "Konsultasi", icon: Icons.room_service),
            _dateTimePicker(),

            ///Submit booking
            _submitBooking()
          ],
        ),
      ),
    );
  }

  _textInput({@required String text, @required IconData icon}) {
    return Container(
      margin: EdgeInsets.only(bottom: kHomeDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(color: kHomeBodyTextColor),
            hintText: text,
            prefixIcon: Icon(
              icon,
              color: kHomeBodyTextColor,
            )),
      ),
    );
  }

  _dropDownInput({@required String text, @required IconData icon}) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        margin: EdgeInsets.only(bottom: kHomeDefaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              icon,
              color: kHomeBodyTextColor,
            ),
            SizedBox(width: 5),
            Expanded(
                child: DropdownButtonFormField<String>(
              decoration: InputDecoration(enabledBorder: InputBorder.none),
              isExpanded: true,
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: kHomeBodyTextColor,
              ),
              hint: Text(text, style: TextStyle(color: kHomeBodyTextColor)),
              style: TextStyle(color: kHomeBodyTextColor),
              dropdownColor: kHomeDarkBlackColor,
              items: <String>['Male', 'Female'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ))
          ],
        ));
  }

  _dropDownInputService({@required String text, @required IconData icon}) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        margin: EdgeInsets.only(bottom: kHomeDefaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              icon,
              color: kHomeBodyTextColor,
            ),
            SizedBox(width: 5),
            Expanded(
                child: DropdownButtonFormField<String>(
              decoration: InputDecoration(enabledBorder: InputBorder.none),
              isExpanded: true,
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: kHomeBodyTextColor,
              ),
              hint: Text(text, style: TextStyle(color: kHomeBodyTextColor)),
              style: TextStyle(color: kHomeBodyTextColor),
              dropdownColor: kHomeDarkBlackColor,
              items: <String>[
                'Konsultasi Gigi dan Mulut',
                'Pembersihan Gigi',
                'Pemasangan Gigi Palsu',
                'Cetak Gigi',
                'Pemasangan Behel',
                'Custom Produk Gigi'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ))
          ],
        ));
  }

  _dateTimePicker() {
    final provHome = Provider.of<HomeProvider>(context);
    return GestureDetector(
      onTap: () => provHome.selectDate(context),
      child: Container(
        width: double.infinity,
        height: 45,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: kHomeDefaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.calendar_today_rounded, color: kHomeBodyTextColor),
            SizedBox(width: 5),
            Text(
              "${provHome.selectedDate.toLocal()}".split(' ')[0],
              style: TextStyle(color: kHomeBodyTextColor),
            )
          ],
        ),
      ),
    );
  }

  _submitBooking() {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: cMain,
            padding: EdgeInsets.symmetric(
                horizontal: kHomeDefaultPadding * 1.5,
                vertical: kHomeDefaultPadding),
          ),
          child: Text("Booking Jadwal"),
        ));
  }
}
