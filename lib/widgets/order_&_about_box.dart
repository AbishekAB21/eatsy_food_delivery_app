import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class OrderAndAboutBox extends StatelessWidget {
  const OrderAndAboutBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 70,
                        width: 140,
                        decoration: BoxDecoration(
                          color: apptheme.secondaryColor,
                          borderRadius: BorderRadius.circular(8)
                        ),
                      
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart_rounded, size: 26, color: apptheme.primaryColor2,),
                            Text("Orders", style: apptheme.ProfileScreenTexts,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 80,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 70,
                        width: 140,
                        decoration: BoxDecoration(
                          color: apptheme.secondaryColor,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.info, size: 26, color: apptheme.primaryColor2,),
                            Text("About", style: apptheme.ProfileScreenTexts,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
  }
}