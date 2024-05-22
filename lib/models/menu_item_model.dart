import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restaurantId;
  final String name;
  final String category;
  final String description;
  final double price;
  // final String imageUrl;

  MenuItem(
      {required this.id,
      required this.restaurantId,
      required this.name,
      required this.category,
      required this.description,
      required this.price});

  @override
  List<Object?> get props => [id, restaurantId, name, category, description, price];

  static List<MenuItem> menuitems = [
    MenuItem(
        id: 1,
        restaurantId: 1,
        name: "Margherita",
        category: "Pizza",
        description: "Pizza with onions",
        price: 150.0),
    MenuItem(
        id: 2,
        restaurantId: 1,
        name: "Zinger Burger",
        category: "Burger",
        description: "A tasty burger",
        price: 135.0),
    MenuItem(
        id: 2,
        restaurantId: 1,
        name: "Coca - Cola",
        category: "Drinks",
        description: "A Cold Beverage",
        price: 135.0),
    MenuItem(
        id: 2,
        restaurantId: 1,
        name: "Choclate Ice-Cream",
        category: "Dessert",
        description: "A delicious Ice-Cream",
        price: 85.0),
  ];
}
