part of 'filters_bloc.dart';

sealed class FiltersEvent extends Equatable {
  const FiltersEvent();

  @override
  List<Object> get props => [];
}


class FilterLoad extends FiltersEvent{
  @override
  List<Object> get props => [];
}

class CategoryFilterUpdated extends FiltersEvent{
  final CategoryFilterModel categoryFilter;

  CategoryFilterUpdated({
    required this.categoryFilter
  });

  @override
  List<Object> get props => [categoryFilter];
}


class PriceFilterUpdated extends FiltersEvent{
  final PriceFilterModel priceFilter;

  PriceFilterUpdated({required this.priceFilter});

  @override
  List<Object> get props => [priceFilter];
}