import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  Locale currentLocale = Locale('en');

  void changeApplicationTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void changeApplication(Locale newLocal) {
    if (newLocal == currentLocale) return;
    currentLocale = newLocal;
    notifyListeners();
  }
}
