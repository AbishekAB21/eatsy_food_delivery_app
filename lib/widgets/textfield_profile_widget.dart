import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableTextWidget extends StatelessWidget {
  String label;
  Icon PrefixIcons;
  bool visiblity;
  ReusableTextWidget({super.key, required this.label, required this.PrefixIcons, required this.visiblity,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: visiblity,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(10),
          label: Text(label),
          prefixIcon: PrefixIcons,
        ),
      ),
    );
  }
}
