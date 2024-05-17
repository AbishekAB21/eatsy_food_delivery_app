import 'package:eatsy_food_delivery_app/models/promo_model.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PromoBox extends StatelessWidget {
  final Promo promo;
  const PromoBox({super.key, required this.promo});

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
                image: NetworkImage(promo.imageUrl),
                fit: BoxFit.cover)),
      ),

 
      ClipPath(
        clipper: CustomPromoClipper(),
        child: Container(
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
                Text(promo.title, style: apptheme.PromoBoxText1,),
                SizedBox(height: 6,),
                Text(promo.description, style: apptheme.PromoBoxText2,)
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class CustomPromoClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    
    var path = new Path();
    path.lineTo(0,0);
    path.lineTo(0, size.height);
    path.lineTo(225, size.height);
    path.lineTo(275, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}
