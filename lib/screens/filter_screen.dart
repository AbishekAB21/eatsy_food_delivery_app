import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/reusable_app_bar.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apptheme.primaryColor,

      appBar: ReusableAppBar(
        titleText: "Filters",
        centerText: true,
        IconColor: apptheme.secondaryColor,
        appBarColor: apptheme.primaryColor2,
      ),
    );
  }
}

