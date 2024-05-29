import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String titleText;
  final Color appBarColor;
  final Color IconColor;
  final bool centerText;
  const ReusableAppBar({
    super.key,
    required this.titleText,
    required this.appBarColor,
    required this.IconColor,
    required this.centerText
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText, style: apptheme.UserName,),
      backgroundColor: appBarColor,
      centerTitle: centerText,
      iconTheme: IconThemeData(color: IconColor),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(56);
}