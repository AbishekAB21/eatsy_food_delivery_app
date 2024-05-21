import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/log_out_box.dart';
import 'package:eatsy_food_delivery_app/widgets/order_&_about_box.dart';
import 'package:eatsy_food_delivery_app/widgets/profile_box.dart';
import 'package:eatsy_food_delivery_app/widgets/your_profile_box.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: apptheme.primaryColor,
          appBar: AppBar(
            backgroundColor: apptheme.primaryColor,
            iconTheme: IconThemeData(color: apptheme.primaryColor2),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              ProfileBox(),
              SizedBox(
                height: 10,
              ),
              OrderAndAboutBox(),
              SizedBox(
                height: 20,
              ),
              YourProfile(),
              SizedBox(
                height: 40,
              ),

              LogOutBox(),
            ],
          )),
    );
  }
}
