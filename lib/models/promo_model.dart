import 'package:equatable/equatable.dart';

class Promo extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Promo(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  List<Object?> get props => [id, title, description, imageUrl];

 static List<Promo> promos = [
    Promo(
        id: 1,
        title: "Free Delivery on your first 3 orders",
        description:
            "Place an order above Rs.699 and the delivery fee is on us",
        imageUrl:
            "https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    Promo(
        id: 2,
        title: "20% OFF on selected restaurants",
        description: "Get a 20% discount at 200+ restaurants",
        imageUrl:
            "https://images.unsplash.com/photo-1598720290281-9f26ae6d6f81?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
  ];
}
