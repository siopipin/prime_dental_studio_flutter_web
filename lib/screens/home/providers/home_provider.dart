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
}
