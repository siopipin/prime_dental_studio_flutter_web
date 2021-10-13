import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  initialProfile() {
    defaultTabMenu = 1;
  }

  int defaultTabMenu = 1;
  setDefaultTabMenu(val) {
    defaultTabMenu = val;
    notifyListeners();
  }
}
