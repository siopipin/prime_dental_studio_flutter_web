import 'package:flutter/material.dart';

class KonsultasiProvider extends ChangeNotifier {
  bool _fiturEnable = false;
  bool get fiturEnable => _fiturEnable;
  setFiturEnable(val) {
    _fiturEnable = val;
    notifyListeners();
  }
}
