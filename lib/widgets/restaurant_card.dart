import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: NetworkImage(restaurant.imageUrl),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    color: apptheme.secondaryColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "${restaurant.deliveryTime} mins",
                      style: apptheme.DeliveryTime,
                    )),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${restaurant.name}",
                  style: apptheme.restaurantName,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: restaurant.tags
                      .map((tag) => restaurant.tags.indexOf(tag) ==
                              restaurant.tags.length - 1
                          ? Text(tag)
                          : Text("$tag, "))
                      .toList(),
                ),
                SizedBox(height: 5,),
                Text("${restaurant.distance}km - ₹${restaurant.deliveryFee} Delivery fee")
              ],
            ),
          )
        ],
      ),
    );
  }
}