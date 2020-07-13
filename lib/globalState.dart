import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GlobalStateChangeNotifier with ChangeNotifier {
  Color _backgroundColor = Colors.white;

  Color get backgroundColor => _backgroundColor;

  set backgroundColor(Color value) {
    _backgroundColor = value;
    notifyListeners();
  }
}
