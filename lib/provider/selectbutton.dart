import 'package:flutter/material.dart';

class ButtonsProvider with ChangeNotifier {
  int _selectedButton = 0;
  int get selectedButton => _selectedButton;
  void selectButton(int index) {
    _selectedButton = index;
    notifyListeners();
  }
}
