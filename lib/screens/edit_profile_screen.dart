import 'dart:typed_data';

import 'package:eatsy_food_delivery_app/provider/auth_provider.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/utils/image_method.dart';
import 'package:eatsy_food_delivery_app/widgets/textfield_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  Uint8List? _image;

  void selectimage() async{

    Uint8List img = await pickImage(ImageSource.gallery);

    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthenticationProvider>(context);
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
              Stack(children: [
                _image != null ? CircleAvatar(
                  radius: 50,
                  backgroundImage: MemoryImage(_image!),
                ) :
                CircleAvatar(
                  radius: 50,
                  backgroundColor: apptheme.primaryColor2,
                  child: Icon(
                    Icons.person,
                    color: apptheme.secondaryColor,
                    size: 60,
                  ),
                ),
                Positioned(
                  bottom: -8,
                  left: 60,
                  child: IconButton(
                      onPressed: () {
                        selectimage();
                      },
                      icon: Icon(
                        Icons.add_a_photo_rounded,
                        color: apptheme.ShadowColor,
                      )),
                )
              ]),
              SizedBox(height: 20),
              currentUser == null
                  ? CircularProgressIndicator()
                  : ReusableTextWidget(
                      readOnly: true,
                      label: currentUser.email ?? '',
                      PrefixIcons:
                          Icon(Icons.email, color: apptheme.primaryColor2),
                      visiblity: false,
                      SuffixIcons: Icon(Icons.edit_rounded,
                          color: apptheme.primaryColor2),
                    ),
              SizedBox(
                height: 10,
              ),
              ReusableTextWidget(
                  label: "Username",
                  PrefixIcons: Icon(
                    Icons.person,
                    color: apptheme.primaryColor2,
                  ),
                  visiblity: false,
                  SuffixIcons: Icon(Icons.edit, color: apptheme.primaryColor2),
                  readOnly: true)
            ],
          ),
        ),
      ),
    );
  }
}
