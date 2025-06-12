import 'package:finance_application/Screens/Main_Dashboard/dashboard_screen.dart';
import 'package:finance_application/Screens/SplashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            Color.fromRGBO(0, 0, 0, 1), // Background black rahega
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent, // Fully transparent
          elevation: 0, // No shadow
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
