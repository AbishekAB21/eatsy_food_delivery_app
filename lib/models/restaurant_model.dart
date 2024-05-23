import 'package:eatsy_food_delivery_app/models/menu_item_model.dart';
import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  final List<String> tags;
  final List<MenuItem> menuitems;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  Restaurant(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.tags,
      required this.menuitems,
      required this.deliveryTime,
      required this.deliveryFee,
      required this.distance});

  @override
  List<Object?> get props =>
      [id, imageUrl, name, tags, deliveryTime, deliveryFee, distance];

  static List<Restaurant> restaurants = [
    Restaurant(
        id: 1,
        imageUrl:
            "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D",
        name: "Golden Gate Restaurant",
        tags: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 1)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuitems: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 1)
            .toList(),
        deliveryTime: 30,
        deliveryFee: 5.0,
        distance: 1.0),
    Restaurant(
        id: 2,
        imageUrl:
            "https://images.unsplash.com/photo-1552566626-52f8b828add9?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Food Paradise",
        tags: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 2)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuitems: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 2)
            .toList(),
        deliveryTime: 30,
        deliveryFee: 5.0,
        distance: 1.0),
    Restaurant(
        id: 3,
        imageUrl:
            "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Foodies Spot",
        tags: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 3)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuitems: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 3)
            .toList(),
        deliveryTime: 30,
        deliveryFee: 5.0,
        distance: 1.0),
    Restaurant(
        id: 4,
        imageUrl:
            "https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Eat Well",
        tags: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 4)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuitems: MenuItem.menuitems
            .where((menuItem) => menuItem.restaurantId == 4)
            .toList(),
        deliveryTime: 30,
        deliveryFee: 5.0,
        distance: 1.0)
  ];
}
