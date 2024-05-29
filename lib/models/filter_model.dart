import 'package:eatsy_food_delivery_app/models/category_filter_model.dart';
import 'package:eatsy_food_delivery_app/models/price_filter_model.dart';
import 'package:equatable/equatable.dart';

class Filter extends Equatable{

  final List<CategoryFilterModel> categoryFilters;
  final List<PriceFilterModel> priceFilters;

  const Filter({
    this.categoryFilters = const <CategoryFilterModel>[],
    this.priceFilters = const <PriceFilterModel>[],
  });

  Filter copyWith({
    List<CategoryFilterModel>? categoryFilters,
    List<PriceFilterModel>? priceFilters,
  }){
    return Filter(
      categoryFilters: categoryFilters ?? this.categoryFilters,
      priceFilters: priceFilters ?? this.priceFilters,
    );
  }
  
  @override
  List<Object?> get props => [categoryFilters,priceFilters];
}