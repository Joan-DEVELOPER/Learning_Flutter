import 'package:flutter/material.dart';

class Dark_Light_Provider extends ChangeNotifier {
  bool _mode = false; // False = light mode / True = dark mode
  bool get currentMode => _mode;

  void switchTheme() {
    _mode = !_mode;
    notifyListeners();
  }
}
