import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigprovider extends ChangeNotifier {
  String applang = 'ar';

  ThemeMode appTheme = ThemeMode.light;

  void changelang(String newlang) async {
    if (applang == newlang) {
      return;
    }
    applang = newlang;
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('language', applang);
    notifyListeners();
  }

  void changetheme(ThemeMode newtheme) async {
    if (appTheme == newtheme) {
      return;
    }
    appTheme = newtheme;
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', appTheme == ThemeMode.light ? 'light' : 'dark');
    notifyListeners();
  }

  bool isdarkmode() {
    return appTheme == ThemeMode.dark;
  }
}
