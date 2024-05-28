import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/restaurant_tags.dart';
import 'package:flutter/material.dart';

class RestaurantInformationScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantInformationScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: apptheme.secondaryColor,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurant.name,
            style: apptheme.RestaurantInfoScreenTitle,
          ),
          SizedBox(
            height: 10,
          ),
          RestaurantTags(restaurant: restaurant),
          SizedBox(
            height: 5,
          ),
          Text(
              "${restaurant.distance}km - ₹${restaurant.deliveryFee} Delivery fee"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Restaurant Information",
            style: apptheme.restaurantName,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          )
        ],
      ),
    );
  }
}
