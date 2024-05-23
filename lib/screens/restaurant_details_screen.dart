import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/restaurant_info.dart';
import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Restaurant restaurant = Restaurant.restaurants[0];
    return SafeArea(
      child: Scaffold(
        backgroundColor: apptheme.primaryColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: apptheme.primaryColor2),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: 150,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(apptheme.primaryColor2),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {},
                      child: Text(
                        "Basket",
                        style: apptheme.ButtonText2,
                      )),
                ),
              ],
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 50)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(restaurant.imageUrl))),
              ),
              RestaurantInformationScreen(restaurant: restaurant),
              ListView.builder(
                shrinkWrap: true,
                itemCount: restaurant.tags.length,
                itemBuilder: (context, index) {
                  return _buildMenuItems(restaurant, context, index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItems(
      Restaurant restaurant, BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            restaurant.tags[index],
            style: apptheme.RestaurantTags,
          ),
        ),
        Column(
          children: restaurant.menuitems
              .where((menuItem) => menuItem.category == restaurant.tags[index])
              .map((menuItem) => Column(
                    children: [
                      Container(
                        child: ListTile(
                          title: Text(menuItem.name),
                        ),
                      )
                    ],
                  ))
              .toList(),
        )
      ],
    );
  }
}
