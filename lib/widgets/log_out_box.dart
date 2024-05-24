import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogOutBox extends StatelessWidget {
  const LogOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            elevation: 4,
            shadowColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: apptheme.primaryColor2,
            content: Text(
              "Are you sure that you want to log out ?",
              style: apptheme.UserName,
            ),
            actions: [
              TextButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Yes",
                    style: apptheme.UserName,
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "No",
                    style: apptheme.UserName,
                  ))
            ],
          ),
        );
      },
      child: Container(
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
            Text(
              "Log Out",
              style: apptheme.ProfileScreenTexts,
            )
          ],
        ),
      ),
    );
  }
}
