import 'package:eatsy_food_delivery_app/bloc/filters/filters_bloc.dart';
import 'package:eatsy_food_delivery_app/models/price_model.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceFilterWidget extends StatelessWidget {
  const PriceFilterWidget({
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
          return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: state.filter.priceFilters
                  .asMap()
                  .entries
                  .map((price) => InkWell(
                        onTap: () {
                          context.read<FiltersBloc>().add(PriceFilterUpdated(
                              priceFilter: state.filter.priceFilters[price.key]
                                  .copyWith(
                                      value: !state.filter
                                          .priceFilters[price.key].value)));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: state.filter.priceFilters[price.key].value
                                  ? apptheme.primaryColor2
                                  : apptheme.secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            state.filter.priceFilters[price.key].price.price,
                            style: apptheme.headline5,
                          ),
                        ),
                      ))
                  .toList());
        } else {
          return Text("Something went wrong");
        }
      },
    );
  }
}
