import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_app/core/styles/themes.dart';
import 'package:food_app/features/intro/splash_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
        builder: (context, child) {
          return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Scaffold(),);
        },
        home: SplashScreen(),
    
    );
  }
}
