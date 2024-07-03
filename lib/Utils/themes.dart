import 'package:flutter/material.dart';
ThemeData light = ThemeData(
  brightness: Brightness.light
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark
);

class ThemeManager with ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light;
  get thememode => _themeMode;

  toggleTheme(bool isDark){
    _themeMode = isDark?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }


}
