import 'package:eatsy_food_delivery_app/screens/forgot_password_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class SecurityAndPassword extends StatelessWidget {
  const SecurityAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen(),));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 48,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: apptheme.secondaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.shield,
                color: apptheme.primaryColor2,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Security and Password",
                style: apptheme.ProfileScreenTexts,
              )
            ],
          ),
        ),
      ),
    );
  }
}
