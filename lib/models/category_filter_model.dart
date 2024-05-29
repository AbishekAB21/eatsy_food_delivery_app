import 'package:eatsy_food_delivery_app/models/category_model.dart';
import 'package:equatable/equatable.dart';

class CategoryFilterModel extends Equatable {
  final int id;
  final Category category;
  final bool value;

  CategoryFilterModel(
      {required this.id, required this.category, required this.value});

  CategoryFilterModel copyWith({
    int? id,
    Category? category,
    bool? value,
  }) {
    return CategoryFilterModel(
        id: id ?? this.id,
        category: category ?? this.category,
        value: value ?? this.value);
  }

  @override
  List<Object?> get props => [
        id,
        category,
        value,
      ];

  static List<CategoryFilterModel> filters = Category.categories
      .map((category) => CategoryFilterModel(
          id: category.id, category: category, value: false))
      .toList();
}
