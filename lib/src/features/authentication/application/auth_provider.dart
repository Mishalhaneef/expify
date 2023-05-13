import 'package:flutter/material.dart';

class AuthenticationProvider extends ChangeNotifier {
  bool obscureText = true;

  togglePasswordVisibility() {
    obscureText = !obscureText;
    notifyListeners();
  }
}
