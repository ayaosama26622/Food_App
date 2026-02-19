import 'package:flutter/material.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/features/Favourite/data/product_favourite.dart';
import 'package:food_app/features/Favourite/widgets/favourit_item.dart';

class FavouriteScreeen extends StatelessWidget {
  const FavouriteScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
        title: Text(
          "Favourite",
          style: TextStyles.title.copyWith(
            color: AppColor.blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: favourite.length,
        itemBuilder: (context, index) {
          return FavouritItem(
            Product: favourite[index]);
        },
      ),
      bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(16.0),
      child: MainButton(
      text: 'Add All To Cart',
      onPressed: () {
      }
      ),
      ),
    );
  }
}