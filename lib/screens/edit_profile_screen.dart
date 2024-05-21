import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/textfield_profile_widget.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: apptheme.primaryColor,
        appBar: AppBar(
          backgroundColor: apptheme.primaryColor,
          iconTheme: IconThemeData(color: apptheme.primaryColor2),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: apptheme.primaryColor2,
              ),
              SizedBox(height: 20,),
              ReusableTextWidget(
                label: "E-mail",
                PrefixIcons: Icon(Icons.email),
                visiblity: false,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // ReusableTextWidget(
              //   label: "Password",
              //   PrefixIcons: Icon(Icons.password_rounded),
              //   visiblity: true,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
