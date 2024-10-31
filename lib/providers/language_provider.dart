import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String _currentLanguage = 'en';

  String get currentLanguage => _currentLanguage;

  void switchLanguage(String newLanguage) {
    _currentLanguage = newLanguage;
    notifyListeners();
  }
}
