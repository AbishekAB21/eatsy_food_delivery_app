import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class PromoBox extends StatelessWidget {
  const PromoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            color: apptheme.primaryColor2,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.cover)),
      ),

      // TODO: Add Clipper to display the details and image
      Container(
        margin: EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            color: apptheme.primaryColor2,
            borderRadius: BorderRadius.circular(5),
            ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 125),
          child: Column(
            children: [
              Text("Free Delivery on your first 3 orders", style: apptheme.PromoBoxText1,),
              SizedBox(height: 6,),
              Text("Place an order above Rs.699 and the delivery fee is on us", style: apptheme.PromoBoxText2,)
            ],
          ),
        ),
      ),
    ]);
  }
}
