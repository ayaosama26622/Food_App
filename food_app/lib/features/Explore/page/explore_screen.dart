import 'package:flutter/material.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/widgets/custom_text_from_field.dart';
import 'package:food_app/features/Explore/product_explore/product_explore';
import 'package:food_app/features/Explore/widgets/item_explore.dart';
import 'package:food_app/features/search/page/search_screen.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          "Find Products",
          style: TextStyles.title.copyWith(
            color: AppColor.blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Hero(
              tag: 'search',
              child: Material(
                color: Colors.transparent,
                child: CustomTextFromField(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Store',
                  readOnly: true,
                  onTap: () {
                    pushTo(context, const SearchScreen());
                  },
                ),
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    model: categories[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
