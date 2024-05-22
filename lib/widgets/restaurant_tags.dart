import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class RestaurantTags extends StatelessWidget {
  const RestaurantTags({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: restaurant.tags
          .map((tag) => restaurant.tags.indexOf(tag) ==
                  restaurant.tags.length - 1
              ? Text(tag)
              : Text("$tag, "))
          .toList(),
    );
  }
}
