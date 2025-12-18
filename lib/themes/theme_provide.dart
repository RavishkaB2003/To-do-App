import 'package:flutter/material.dart';
import 'package:todo_app/themes/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = lightmode; //default theme

  ThemeData get currentTheme => _currentTheme; //get the current theme

  set themeData(ThemeData theme){ //set the current theme
    _currentTheme = theme;
    notifyListeners();
  }

  void toggleTheme(){
    if(_currentTheme == lightmode){
      _currentTheme = darkmode;
    } else {
      _currentTheme = lightmode;
    }
    notifyListeners();
  }
}
