import 'package:flutter/material.dart';

AppTheme apptheme = AppDefaultTheme();

abstract class AppTheme {
  final Color primaryColor;
  final Color primaryColor2;
  final Color secondaryColor;
  final Color SnackBarColor;
  final Color ErrorColor;
  final Color ShadowColor;
  final TextStyle SplashText;
  final TextStyle LoginWelcome;
  final TextStyle LoginText1;
  final TextStyle CreateAccountText;
  final TextStyle LoginHintText;
  final TextStyle ButtonText;
  final TextStyle ButtonText2;
  final TextStyle ForgotPasswordText;
  final TextStyle ErrorMessage;
  final TextStyle HomeScreenAppBar;
  final TextStyle UserName;
  final TextStyle CategoryTile;
  final TextStyle PromoBoxText1;
  final TextStyle PromoBoxText2;
  final TextStyle HomeScreenSearchHint;
  final TextStyle HomescreenHeading;
  final TextStyle DeliveryTime;
  final TextStyle restaurantName;
  final TextStyle ProfileScreenTexts;
  final TextStyle RestaurantInfoScreenTitle;
  final TextStyle RestaurantTags;
  final TextStyle headline5;
  final TextStyle healdline4;
  final TextStyle bodyText1;

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
    required this.ButtonText2,
    required this.ForgotPasswordText,
    required this.SnackBarColor,
    required this.ErrorColor,
    required this.ShadowColor,
    required this.ErrorMessage,
    required this.HomeScreenAppBar,
    required this.UserName,
    required this.CategoryTile,
    required this.PromoBoxText1,
    required this.PromoBoxText2,
    required this.HomeScreenSearchHint,
    required this.HomescreenHeading,
    required this.DeliveryTime,
    required this.restaurantName,
    required this.ProfileScreenTexts,
    required this.RestaurantInfoScreenTitle,
    required this.RestaurantTags,
    required this.headline5,
    required this.healdline4,
    required this.bodyText1,
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
              fontWeight: FontWeight.w900,
            ),
            LoginWelcome: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 236, 110, 101),
              fontWeight: FontWeight.bold,
            ),
            LoginText1: TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 236, 110, 101)),
            CreateAccountText: TextStyle(
                fontSize: 12,
                color: Colors.blue.shade700,
                fontWeight: FontWeight.w600),
            LoginHintText: TextStyle(color: Colors.black54, fontSize: 12),
            ForgotPasswordText: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 236, 110, 101),
                fontWeight: FontWeight.w600),
            ButtonText: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ButtonText2: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ErrorColor: Colors.red.shade900,
            ShadowColor: Colors.black,
            ErrorMessage: TextStyle(
                fontSize: 10, color: Colors.white, fontWeight: FontWeight.w600),
            HomeScreenAppBar: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
            UserName: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            CategoryTile: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
            PromoBoxText1: TextStyle(
                fontFamily: "Futura",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white),
            PromoBoxText2: TextStyle(
                fontFamily: "Futura",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white),
            HomeScreenSearchHint:
                TextStyle(color: Colors.black54, fontSize: 16),
            HomescreenHeading: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.black),
            DeliveryTime: TextStyle(color: Colors.black54, fontSize: 12),
            restaurantName: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
            ProfileScreenTexts: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
            RestaurantInfoScreenTitle: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 236, 110, 101),
                fontWeight: FontWeight.w900),
            RestaurantTags: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 236, 110, 101),
                fontWeight: FontWeight.w900),
            headline5: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            healdline4: TextStyle(fontSize: 18, color: Color.fromARGB(255, 236, 110, 101), fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 14, color: Colors.black)
            );
}
