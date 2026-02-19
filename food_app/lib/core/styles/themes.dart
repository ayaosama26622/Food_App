import 'package:flutter/material.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/constants/font_app.dart';


abstract class AppThemes{
  static ThemeData get lightTheme => ThemeData(
        fontFamily: AppFont.poppins,
        scaffoldBackgroundColor: AppColor.backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.PrimaryColor,
            minimumSize: const Size(double.infinity, 58),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            foregroundColor: AppColor.backgroundColor,
          ), 
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(padding: EdgeInsets.zero,
          minimumSize: Size(60, 30)),
          
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyles.text,
        fillColor: AppColor.accentColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.PrimaryColor,
            unselectedItemColor: AppColor.grayColor,
            backgroundColor: Colors.transparent,
            selectedLabelStyle: TextStyles.caption.copyWith(fontWeight: FontWeight.bold , height: 2),
            unselectedLabelStyle: TextStyles.caption.copyWith(fontWeight: FontWeight.bold, height: 2),
            elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.PrimaryColor,
          onSurface: AppColor.blackColor)
        );
}