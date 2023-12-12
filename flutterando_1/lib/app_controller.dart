import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isdarkTheme = false;
  changeTheme() {
    isdarkTheme = !isdarkTheme;
    notifyListeners();
  }
}
