import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class ReusableTexfields extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Icon prefixIcon;
  final Icon suffixIcon;
  final bool hiddenText;
  ReusableTexfields(
      {super.key,
      required this.controller,
      required this.hint,
      required this.hiddenText,
      required this.prefixIcon,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: apptheme.LoginHintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            contentPadding: EdgeInsets.all(12)),
      ),
    );
  }
}
