part of 'filters_bloc.dart';

sealed class FiltersState extends Equatable {
  const FiltersState();
  
  @override
  List<Object> get props => [];
}

final class FiltersLoading extends FiltersState {}

final class FiltersLoaded extends FiltersState {

  final Filter filter;

  FiltersLoaded({
    this.filter = const Filter(),
  });

  @override
  List<Object> get props => [filter];
}
