import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableTextWidget extends StatelessWidget {
  String label;
  Icon PrefixIcons;
  bool visiblity;
  Icon SuffixIcons;
  bool readOnly;
  ReusableTextWidget({super.key, required this.label, required this.PrefixIcons, required this.visiblity, required this.SuffixIcons, required this.readOnly});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        readOnly: readOnly,
        obscureText: visiblity,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(10),
          label: Text(label),
          labelStyle: apptheme.LoginHintText,
          prefixIcon: PrefixIcons,

          suffixIcon: IconButton(onPressed: (){}, icon: SuffixIcons)
        ),
      ),
    );
  }
}
