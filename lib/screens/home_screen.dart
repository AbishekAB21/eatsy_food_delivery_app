import 'package:eatsy_food_delivery_app/models/category_model.dart';
import 'package:eatsy_food_delivery_app/screens/profile_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/category_box.dart';
import 'package:eatsy_food_delivery_app/widgets/promo_box.dart';
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
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Category.categories.length,
                    itemBuilder: (context, index) {
                    
                    return CategoryBox(category: Category.categories[index]);
                  },),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 125,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    
                    return PromoBox();
                  },),
                ),
              )
            ],
          ),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
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
              signoutuser();
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
