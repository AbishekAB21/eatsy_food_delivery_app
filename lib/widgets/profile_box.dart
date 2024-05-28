import 'package:eatsy_food_delivery_app/provider/auth_provider.dart';
import 'package:eatsy_food_delivery_app/screens/edit_profile_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthenticationProvider>(context);
    final currentUser = authProvider.user;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditProfileScreen(),
              ));
        },
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
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    currentUser == null
                  ? CircularProgressIndicator()
                  : Text(
                      currentUser.email!, overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: apptheme.HomeScreenSearchHint,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfileScreen(),
                              ));
                        },
                        child: Text(
                          "Edit Details",
                          style: apptheme.ForgotPasswordText,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
