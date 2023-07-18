import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  int _selectedTheme = 3;

  bool get isThemeLight {
    return _themeMode == ThemeMode.light ? true : false;
  }

  ThemeMode get getThemeMode {
    return _themeMode;
  }

  int get getSelectedTheme {
    return _selectedTheme;
  }

  set setTheme(ThemeMode theme) {
    _themeMode = theme;
    notifyListeners();
  }

  set setSelectedTheme(int no) {
    _selectedTheme = no;
    notifyListeners();
  }
}
