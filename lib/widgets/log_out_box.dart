import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class LogOutBox extends StatelessWidget {
  const LogOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: apptheme.secondaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout_outlined,
                      color: apptheme.primaryColor2,
                      size: 40,
                    ),
                    Text("Log Out", style: apptheme.ProfileScreenTexts,)
                  ],
                ),
              );
  }
}