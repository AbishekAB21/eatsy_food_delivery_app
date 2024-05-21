import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: apptheme.secondaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: apptheme.ShadowColor,
                          spreadRadius: -4.6,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 5,
                          offset: Offset(0, 0.5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: apptheme.primaryColor2,
                          child: Icon(
                            Icons.person,
                            color: apptheme.secondaryColor,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Test@...", style: apptheme.HomeScreenSearchHint,),
                            GestureDetector(
                              onTap: (){},
                              child: Text("Edit Details", style: apptheme.ForgotPasswordText,))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
  }
}