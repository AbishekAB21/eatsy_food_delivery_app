import 'package:eatsy_food_delivery_app/models/price_model.dart';
import 'package:equatable/equatable.dart';

class PriceFilterModel extends Equatable {
  final int id;
  final Price price;
  final bool value;

  PriceFilterModel(
      {required this.id, required this.price, required this.value});

  PriceFilterModel copyWith({
    int? id,
    Price? price,
    bool? value,
  }) {
    return PriceFilterModel(
        id: id ?? this.id,
        price: price ?? this.price,
        value: value ?? this.value);
  }

  @override
  List<Object?> get props => [
        id,
        price,
        value,
      ];

  static List<PriceFilterModel> filters = Price.prices
      .map(
          (price) => PriceFilterModel(id: price.id, price: price, value: false))
      .toList();
}
