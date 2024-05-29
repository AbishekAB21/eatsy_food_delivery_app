import 'package:bloc/bloc.dart';
import 'package:eatsy_food_delivery_app/models/category_filter_model.dart';
import 'package:eatsy_food_delivery_app/models/filter_model.dart';
import 'package:eatsy_food_delivery_app/models/price_filter_model.dart';
import 'package:equatable/equatable.dart';

part 'filters_event.dart';
part 'filters_state.dart';

class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc() : super(FiltersLoading()) {
    on<FilterLoad>(_onFilterLoad);
    on<CategoryFilterUpdated>(_onCategoryFilterUpdated);
    on<PriceFilterUpdated>(_onPriceFilterUpdated);
  }

  void _onFilterLoad(FilterLoad event, Emitter<FiltersState> emit) {
    emit(FiltersLoaded(
      filter: Filter(
        categoryFilters: CategoryFilterModel.filters,
        priceFilters: PriceFilterModel.filters,
      ),
    ));
  }

  void _onCategoryFilterUpdated(CategoryFilterUpdated event, Emitter<FiltersState> emit) {
    final state = this.state;
    if (state is FiltersLoaded) {
      final updatedCategoryFilters = state.filter.categoryFilters.map((categoryFilter) {
        return categoryFilter.id == event.categoryFilter.id
            ? event.categoryFilter
            : categoryFilter;
      }).toList();
      emit(FiltersLoaded(
        filter: Filter(
          categoryFilters: updatedCategoryFilters,
          priceFilters: state.filter.priceFilters,
        ),
      ));
    }
  }

  void _onPriceFilterUpdated(PriceFilterUpdated event, Emitter<FiltersState> emit) {
    final state = this.state;
    if (state is FiltersLoaded) {
      final updatedPriceFilters = state.filter.priceFilters.map((priceFilter) {
        return priceFilter.id == event.priceFilter.id
            ? event.priceFilter
            : priceFilter;
      }).toList();
      emit(FiltersLoaded(
        filter: Filter(
          categoryFilters: state.filter.categoryFilters,
          priceFilters: updatedPriceFilters,
        ),
      ));
    }
  }
}
