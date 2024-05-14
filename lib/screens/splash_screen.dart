import 'package:eatsy_food_delivery_app/pages/auth_page.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    whereToGo();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 400, maxWidth: 400),
                child: Image.asset(
                  "assets/cutlery.png",
                )),
            SizedBox(height: 30),
            Text(
              "EATSY",
              style: apptheme.SplashText,
            ),
            Text(
              "Taste The Convenience",
              style: apptheme.LoginText1,
            ),
          ],
        ),
      ),
    );
  }

  void whereToGo() async {

    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AuthenticationPage(),
        ));
  }
}
