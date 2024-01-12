import 'package:flutter/material.dart';

ThemeData aydinlik = ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.grey),
    scaffoldBackgroundColor: Colors.white,
    primaryTextTheme: TextTheme(
        headlineLarge: TextStyle(color: Colors.black),
        bodyLarge: TextStyle(color: Colors.black),
        bodySmall: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black)));
ThemeData karanlik = ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black,titleTextStyle: TextStyle(color: Colors.white,fontSize: 30)),
    scaffoldBackgroundColor: Colors.grey,textTheme: TextTheme(),
    primaryTextTheme: TextTheme(
        headlineLarge: TextStyle(color: Colors.white),
        bodyLarge: TextStyle(color: Colors.white),
        bodySmall: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white)));
class DataBase with ChangeNotifier{
 late bool selected=false;
  ThemeData get baslangic {
    return selected == true ? karanlik : aydinlik;}
  void temaDegis(){
    selected=!selected;
    notifyListeners();
  }
}