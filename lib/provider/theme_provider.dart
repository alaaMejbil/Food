import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode tm = ThemeMode.light;

  bool value = false;

  void onChangeSwitch(bool val) {
    value = val;
    tm = (value) ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
