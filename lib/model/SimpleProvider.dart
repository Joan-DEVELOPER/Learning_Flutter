import 'package:flutter/foundation.dart';

class SimpleProvider with ChangeNotifier {
  String _name = "Provider App";
  String get getName => _name;

  void setName(newName) {
    _name = newName;
    notifyListeners(); // Notifies all listeners of the changes
  }

  void resetName() {
    _name = "Provider App";
    notifyListeners();
  }
}
