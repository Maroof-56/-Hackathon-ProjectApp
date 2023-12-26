import 'package:flutter/material.dart';

  // next in main.dart
class EmailProvider extends ChangeNotifier{
  String _signUpEmail = '';

  String get signUpEmail => _signUpEmail;

  void setSignUpEmail(String email){
    _signUpEmail = email;
    notifyListeners();
  }
}