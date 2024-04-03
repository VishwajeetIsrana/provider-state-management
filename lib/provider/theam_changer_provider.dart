import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Theamchanger with ChangeNotifier {
  var _theamMode = ThemeMode.light;

  ThemeMode get themeMode => _theamMode;

  void setTheme(themeMode) {
    _theamMode = themeMode;
    notifyListeners();
  }
}
