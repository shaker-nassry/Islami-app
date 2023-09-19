import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';

class AppConfigprovider extends ChangeNotifier {
  String applang = 'ar';

  ThemeMode appTheme = ThemeMode.light;

  void changelang(String newlang) {
    if (applang == newlang) {
      return;
    }
    applang = newlang;
    notifyListeners();
  }

  void changetheme(ThemeMode newtheme) {
    if (appTheme == newtheme) {
      return;
    }
    appTheme = newtheme;
    notifyListeners();
  }

  bool isdarkmode() {
    return appTheme == ThemeMode.dark;
  }
}
