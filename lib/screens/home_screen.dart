import 'package:eatsy_food_delivery_app/models/category_model.dart';
import 'package:eatsy_food_delivery_app/models/promo_model.dart';
import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:eatsy_food_delivery_app/screens/profile_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/category_box.dart';
import 'package:eatsy_food_delivery_app/widgets/food_search_box.dart';
import 'package:eatsy_food_delivery_app/widgets/promo_box.dart';
import 'package:eatsy_food_delivery_app/widgets/restaurant_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// User log out
void signoutuser() async {
  await FirebaseAuth.instance.signOut();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: apptheme.primaryColor,
        appBar: CustomAppBar(),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Category.categories.length,
                    itemBuilder: (context, index) {
                      return CategoryBox(category: Category.categories[index]);
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 125,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Promo.promos.length,
                    itemBuilder: (context, index) {
                      return PromoBox(promo: Promo.promos[index]);
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FoodSearchBox(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Top Rated",
                    style: apptheme.HomescreenHeading,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return RestaurantCard(
                      restaurant: Restaurant.restaurants[index]);
                },
                childCount: Restaurant.restaurants.length,
              ),
            ),
          ],
        ));
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: apptheme.primaryColor2,
      leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
          },
          icon: Icon(
            Icons.person_2_rounded,
            color: apptheme.secondaryColor,
          )),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kevin De Bruyne",
            style: apptheme.UserName,
          ),
          Text(
            "Pensicola, Florida, USA",
            style: apptheme.HomeScreenAppBar,
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  elevation: 4,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: apptheme.primaryColor2,
                  content: Text(
                    "Are you sure that you want to log out ?",
                    style: apptheme.UserName,
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          signoutuser();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Yes",
                          style: apptheme.UserName,
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "No",
                          style: apptheme.UserName,
                        ))
                  ],
                ),
              );
            },
            icon: Icon(
              Icons.logout,
              color: apptheme.secondaryColor,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
