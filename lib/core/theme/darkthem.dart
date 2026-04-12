import 'package:bookly_app/core/utils/AppColor.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff100B20),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xff100B20),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(255, 161, 154, 184),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      selectedIconTheme: IconThemeData(color: Color(kPrimaryColor.value)),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffF5F5F5),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xffF5F5F5),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(kPrimaryColor.value),
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedIconTheme: IconThemeData(color: Color(kPrimaryColor.value)),
    ),
  );
}
