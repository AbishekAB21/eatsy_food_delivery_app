import 'package:eatsy_food_delivery_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContextcontext) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}