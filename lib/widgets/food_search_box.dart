import 'package:eatsy_food_delivery_app/screens/filter_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class FoodSearchBox extends StatelessWidget {
  const FoodSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: apptheme.secondaryColor,
                  hintText: "What would you like to eat ?",
                  hintStyle: apptheme.HomeScreenSearchHint,
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    color: apptheme.primaryColor2,
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 20.0, bottom: 5.0, top: 12.5),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: apptheme.secondaryColor),
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: apptheme.secondaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FilterScreen(),
                      ));
                },
                icon: Icon(
                  Icons.menu_rounded,
                  color: apptheme.primaryColor2,
                )),
          )
        ],
      ),
    );
  }
}
