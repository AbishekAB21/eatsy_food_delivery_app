import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class RestaurantListingScreen extends StatelessWidget {
  final List<Restaurant> restaurants;
  const RestaurantListingScreen({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Restaurant Listing Screen"),
      ),
    );
  }
}
