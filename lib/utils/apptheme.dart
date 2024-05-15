import 'package:flutter/material.dart';

AppTheme apptheme = AppDefaultTheme();

abstract class AppTheme {
  final Color primaryColor;
  final Color primaryColor2;
  final Color secondaryColor;
  final Color SnackBarColor;
  final TextStyle SplashText;
  final TextStyle LoginWelcome;
  final TextStyle LoginText1;
  final TextStyle CreateAccountText;
  final TextStyle LoginHintText;
  final TextStyle ButtonText;
  final TextStyle ForgotPasswordText;
  final Color ErrorColor;
  final TextStyle ErrorMessage;
  AppTheme({
    required this.primaryColor,
    required this.primaryColor2,
    required this.secondaryColor,
    required this.SplashText,
    required this.LoginWelcome,
    required this.LoginText1,
    required this.CreateAccountText,
    required this.LoginHintText,
    required this.ButtonText,
    required this.ForgotPasswordText,
    required this.SnackBarColor,
    required this.ErrorColor,
    required this.ErrorMessage,
  });
}

class AppDefaultTheme extends AppTheme {
  AppDefaultTheme()
      : super(
            primaryColor: Color.fromARGB(255, 233, 233, 233),
            primaryColor2: Color.fromARGB(255, 236, 110, 101),
            secondaryColor: Colors.white,
            SnackBarColor: Colors.green.shade800,
            SplashText: TextStyle(
                color: Color.fromARGB(255, 236, 110, 101),
                fontSize: 50,
                fontWeight: FontWeight.w900,),
            LoginWelcome: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 236, 110, 101),
                fontWeight: FontWeight.bold,),
            LoginText1: TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 236, 110, 101)),
            CreateAccountText: TextStyle(
                fontSize: 12, color: Colors.blue.shade700, fontWeight: FontWeight.w600), 
            LoginHintText: TextStyle(color: Colors.black54, fontSize: 12),
            ForgotPasswordText: TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 236, 110, 101), fontWeight: FontWeight.w600),
            ButtonText: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ErrorColor: Colors.red.shade900,
            ErrorMessage: TextStyle(fontSize: 10, color: Colors.white, fontWeight:FontWeight.w600 )
            );
}
