import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/restaurant_info.dart';
import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  final Restaurant restaurant; 
  const RestaurantDetailsScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
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
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
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
                        color: apptheme.secondaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          title: Text(menuItem.name, style: apptheme.headline5,),
                          subtitle: Text(menuItem.description),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("₹${menuItem.price}",style: apptheme.bodyText1,),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle_rounded,
                                    color: apptheme.primaryColor2,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Divider(height: 2,)
                    ],
                  ))
              .toList(),
        )
      ],
    );
  }
}
