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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('lan', applang);
    notifyListeners();
  }

  void changetheme(ThemeMode newtheme) async {
    if (appTheme == newtheme) {
      return;
    }
    appTheme = newtheme;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        'theme', appTheme == ThemeMode.light ? 'light' : 'dark');
    notifyListeners();
  }

  bool isdarkmode() {
    return appTheme == ThemeMode.dark;
  }
}
