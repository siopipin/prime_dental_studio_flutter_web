import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: kHomeDefaultPadding,
          left: kHomeDefaultPadding,
          right: kHomeDefaultPadding,
          top: kHomeDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: kHomeDarkBlackColor.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          searchBox(context),
          Text(
            '-or-',
            style: TextStyle(color: kHomeDarkBlackColor, fontSize: 12),
          ),
          SizedBox(width: 10),
          category(context),
          itemcategory(context),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: kHomeDarkBlackColor,
              padding: EdgeInsets.symmetric(
                horizontal: kHomeDefaultPadding * 1.5,
                vertical: kHomeDefaultPadding /
                    (Responsive.isDesktop(context) ? 1 : 2),
              ),
            ),
            child: Text("Cari"),
          ),
        ],
      ),
    );
  }

  searchBox(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(right: kHomeDefaultPadding),
          child: TextField(
            style: TextStyle(color: kHomeDarkBlackColor),
            onChanged: (value) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Cari layanan atau produk",
              hintStyle: TextStyle(color: kHomeDarkBlackColor),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(kHomeDefaultPadding / 2),
                child: SvgPicture.asset("assets/home/icons/feather_search.svg"),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(kHomeDefaultPadding / 2),
                ),
                borderSide: BorderSide(color: Color(0xFFCCCCCC)),
              ),
            ),
          )),
    );
  }

  category(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(right: kHomeDefaultPadding),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: _dropDownValue == null
                    ? Text('Pilih Berdasarkan Kategori',
                        style: TextStyle(color: kHomeDarkBlackColor))
                    : Text(
                        _dropDownValue,
                        style: TextStyle(color: kHomeDarkBlackColor),
                      ),
                isExpanded: true,
                iconSize: 30.0,
                icon: Icon(
                  Icons.arrow_downward_sharp,
                  size: 20,
                  color: kHomeDarkBlackColor,
                ),
                dropdownColor: Colors.white,
                style: TextStyle(color: kHomeDarkBlackColor),
                items: ['One', 'Two', 'Three'].map(
                  (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                    () {
                      _dropDownValue = val;
                    },
                  );
                },
              ),
            )));
  }

  itemcategory(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(right: kHomeDefaultPadding),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: _dropDownValue == null
                    ? Text('Item Layanan Terpilih',
                        style: TextStyle(color: kHomeDarkBlackColor))
                    : Text(
                        _dropDownValue,
                        style: TextStyle(color: kHomeDarkBlackColor),
                      ),
                isExpanded: true,
                iconSize: 30.0,
                icon: Icon(
                  Icons.arrow_downward_sharp,
                  size: 20,
                  color: kHomeDarkBlackColor,
                ),
                dropdownColor: Colors.white,
                style: TextStyle(color: kHomeDarkBlackColor),
                items: ['One', 'Two', 'Three'].map(
                  (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                    () {
                      _dropDownValue = val;
                    },
                  );
                },
              ),
            )));
  }
}
