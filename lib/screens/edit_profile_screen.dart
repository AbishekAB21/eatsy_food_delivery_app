import 'package:eatsy_food_delivery_app/provider/auth_provider.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/textfield_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final currentUser = authProvider.user;

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
              SizedBox(height: 20),
              currentUser == null
                  ? CircularProgressIndicator()
                  : ReusableTextWidget(
                      readOnly: true,
                      label: currentUser.email ?? '',
                      PrefixIcons: Icon(Icons.email, color: apptheme.primaryColor2),
                      visiblity: false,
                      SuffixIcons: Icon(Icons.edit_rounded, color: apptheme.primaryColor2),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
