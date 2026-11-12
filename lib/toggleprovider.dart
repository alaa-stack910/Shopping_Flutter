import 'package:flutter/foundation.dart';

class Toggleprovider extends ChangeNotifier {
  bool isToggled = false;

  void toggle(bool value) {
    isToggled = value;
    notifyListeners();
  }
}
