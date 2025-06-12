import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _offsetX = -250; // Start position (left side)
  double _rotation = 0; // Initial rotation
  double _textOpacity = 0.0; // Initially text hidden

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _offsetX = 0;
        _rotation = 1;
      });
    });

    // Show text after logo reaches center
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _textOpacity = 1.0;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      //Get.to(LoginScreenView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/image/bg4.png", // Change to your image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  transform: Matrix4.translationValues(_offsetX, 0, 0),
                  child: AnimatedRotation(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    turns: _rotation,
                    child: Image.asset('assets/image/brokerlogo.png',
                        width: 120, height: 120),
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: _textOpacity,
                  child: const Text(
                    "Demo Application",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
