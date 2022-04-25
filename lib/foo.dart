import 'package:flutter/material.dart';

class Foo with ChangeNotifier {
  String _foo = 'This is test string foo';

  String get getFoo => _foo;

  void changeString(String bar) {
    _foo = bar;
    notifyListeners();
  }
}
