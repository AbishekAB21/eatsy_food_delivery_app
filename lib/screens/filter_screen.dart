import 'package:eatsy_food_delivery_app/bloc/filters/filters_bloc.dart';
import 'package:eatsy_food_delivery_app/models/restaurant_model.dart';
import 'package:eatsy_food_delivery_app/screens/restaurant_listing.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/category_filter.dart';
import 'package:eatsy_food_delivery_app/widgets/price_filter.dart';
import 'package:eatsy_food_delivery_app/widgets/reusable_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apptheme.primaryColor,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 150,
                child: BlocBuilder<FiltersBloc, FiltersState>(
                  builder: (context, state) {
                    if (state is FiltersLoading) {
                      return CircularProgressIndicator(
                        color: apptheme.primaryColor2,
                      );
                    }
                    if (state is FiltersLoaded) {
                      return ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  apptheme.primaryColor2),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          onPressed: () {
                            var categories = state.filter.categoryFilters
                                .where((filter) => filter.value)
                                .map((filter) => filter.category.name)
                                .toList();

                            var prices = state.filter.priceFilters
                                .where((filter) => filter.value)
                                .map((filter) => filter.price.price)
                                .toList();

                            List<Restaurant> restaurants = Restaurant
                                .restaurants
                                .where((restaurant) => categories.any(
                                    (category) =>
                                        restaurant.tags.contains(category)))
                                .where((restaurant) => prices.any((price) =>
                                    restaurant.priceCatrgory.contains(price)))
                                .toList();

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RestaurantListingScreen(
                                          restaurants: restaurants,
                                        )));
                          },
                          child: Text(
                            "Apply",
                            style: apptheme.ButtonText2,
                          ));
                    } else {
                      return Text("Something went wrong");
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: ReusableAppBar(
        titleText: "Filters",
        centerText: true,
        IconColor: apptheme.secondaryColor,
        appBarColor: apptheme.primaryColor2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style: apptheme.healdline4,
            ),
            PriceFilterWidget(),
            Text(
              "Category",
              style: apptheme.healdline4,
            ),
            CategoryFilterWidget(),
          ],
        ),
      ),
    );
  }
}
