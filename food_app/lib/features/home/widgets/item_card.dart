import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/features/details/page/details_screen.dart';
=======
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
>>>>>>> 017cbd8cfc57da98a817d281a4f95f05b87ea482
import 'package:food_app/features/home/data/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.model,
  });
    final ProductModel model;
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return GestureDetector(
      onTap: () {
        pushTo(context, DetailsScreen(model: model,));
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColor.accentColor),
          boxShadow: [
            BoxShadow(
              color: Color(0xff555E58).withValues(alpha: .1),
              blurRadius: 10,
              offset: Offset(0,5)
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: model.tagKey,
                    child: Image.asset(model.image
                    )),
                )
                ),
                SizedBox(height: 10,),
                Text(
                  model.name,
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4,),
                Text(
                  model.weight,
                  style: TextStyles.caption.copyWith(
                    color: AppColor.grayColor,
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${model.price}',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: AppColor.PrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.add,
                        color: AppColor.backgroundColor,
                      ),
                    )
                  ],
                ),
            ],
          ),
          ),
      ),
=======
    return Container(
      width: 160,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.accentColor),
        boxShadow: [
          BoxShadow(
            color: Color(0xff555E58).withValues(alpha: .1),
            blurRadius: 10,
            offset: Offset(0,5)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(model.image),
              )
              ),
              SizedBox(height: 10,),
              Text(
                model.name,
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4,),
              Text(
                model.weight,
                style: TextStyles.caption.copyWith(
                  color: AppColor.grayColor,
                ),
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${model.price}',
                  style: TextStyles.body.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: AppColor.PrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColor.backgroundColor,
                    ),
                  )
                ],
              ),
          ],
        ),
        ),
>>>>>>> 017cbd8cfc57da98a817d281a4f95f05b87ea482
    );
  }
}