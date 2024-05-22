import 'package:eatsy_food_delivery_app/models/category_model.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final Category category;
  const CategoryBox({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        margin: EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
            color: apptheme.primaryColor2,
            borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              right: 10,
              top: 10,
              child: Container(
                height: 64,
                width: 60,
                child: category.image,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: apptheme.secondaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    category.name,
                    style: apptheme.CategoryTile,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
