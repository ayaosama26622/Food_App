import 'package:flutter/material.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/features/Explore/product_explore/product_explore';


class CategoryCard extends StatelessWidget {
  
  const CategoryCard({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        pushTo(context, model.page);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 158,
        height: 170,
        decoration: BoxDecoration(
          color: model.backgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: model.borderColor, width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              model.image,
            ),
            const SizedBox(height: 16),
            Text(
              model.title,
              textAlign: TextAlign.center,
              style:  TextStyles.text.copyWith(
                color: AppColor.blackColor , 
                fontWeight: FontWeight.bold
              )
            ),
          ],
        ),
      ),
    );
  }
}
