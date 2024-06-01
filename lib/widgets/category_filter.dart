import 'package:eatsy_food_delivery_app/bloc/filters/filters_bloc.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryFilterWidget extends StatelessWidget {
  const CategoryFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersBloc, FiltersState>(
      builder: (context, state) {
        if (state is FiltersLoading) {
          return Center(
              child: CircularProgressIndicator(
            color: apptheme.primaryColor2,
          ));
        }

        if (state is FiltersLoaded) {
          return ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.filter.categoryFilters.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: apptheme.secondaryColor,
                    borderRadius: BorderRadius.circular(5)),
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.filter.categoryFilters[index].category.name,
                      style: apptheme.headline5,
                    ),
                    SizedBox(
                      height: 25,
                      child: Checkbox(
                          checkColor: apptheme.secondaryColor,
                         activeColor: apptheme.primaryColor2, 
                          value: state.filter.categoryFilters[index].value,
                          onChanged: (bool? newValue) {
                            context.read<FiltersBloc>().add(
                                CategoryFilterUpdated(
                                    categoryFilter: state
                                        .filter.categoryFilters[index]
                                        .copyWith(
                                            value: !state
                                                .filter
                                                .categoryFilters[index]
                                                .value)));
                          }),
                    )
                  ],
                ),
              );
            },
          );
        } else {
          return Text("Something went wrong");
        }
      },
    );
  }
}
