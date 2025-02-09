import 'package:easyride/easyride.dart';
import 'package:easyride/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
  EasyRide.initialize();
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final lightTheme = ThemeData.from(
    textTheme: TextTheme(
      bodySmall: GoogleFonts.oxygen(),
      titleSmall: GoogleFonts.rufina(),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xff5554A6),
    ).copyWith(
      primary: Color(0xff5554A6),
      onPrimary: Color(0xffa59ad6),
      secondary: Color(0xff091115),
      onSecondary: Color(0xffb6c5ce),
      tertiary: Color(0xff9d7dca),
    ),
  );
  final darkTheme = ThemeData.from(
    textTheme: TextTheme(
      bodySmall: GoogleFonts.oxygen(),
      titleSmall: GoogleFonts.rufina(),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xff5a59ab),
    ).copyWith(
      primary: Color(0xff5a59ab),
      onPrimary: Color(0xff342965),
      secondary: Color(0xffeaf2f6),
      onSecondary: Color(0xff314049),
      tertiary: Color(0xff553582),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: MainPage(),
    );
  }
}
