import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  List<String> get menuItems => ["Home", "Profil", "Layanan", "Info Kesehatan"];

  void setMenuIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    } else {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  //DateTimePicker
  DateTime selectedDate = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) setSelectedDate = picked;
  }

  set setSelectedDate(val) {
    selectedDate = val;
    notifyListeners();
  }
}
