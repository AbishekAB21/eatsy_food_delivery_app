import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/category_filter.dart';
import 'package:eatsy_food_delivery_app/widgets/price_filter.dart';
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

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Price", style: apptheme.healdline4,),
            PriceFilterWidget(),
            Text("Category", style: apptheme.healdline4,),
            CategoryFilterWidget(),
          ],
        ),
      ),
    );
  }
}

