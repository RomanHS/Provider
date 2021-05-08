import 'package:flutter/widgets.dart';

class Data with ChangeNotifier {
  int _data = 0;

  int get getData => _data;

  void plus() {
    _data++;
    notifyListeners();
  }

  void minus() {
    _data--;
    notifyListeners();
  }

  void nul() {
    _data = 0;
    notifyListeners();
  }
}
