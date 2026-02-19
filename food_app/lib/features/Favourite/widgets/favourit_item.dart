import 'package:flutter/material.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/features/Favourite/data/product_favourite.dart';

class FavouritItem extends StatelessWidget {
  const FavouritItem({
    super.key,
    required this.Product,
  });
    final ProductFavourite Product;
  @override
  Widget build(BuildContext context) {
    return 
      Column(
      children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(Product.image,),
            const SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Product.name,
                    style: TextStyles.subtitle.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColor.blackColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    Product.weight,
                    style: TextStyles.body.copyWith(
                      color: AppColor.grayColor,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "\$${Product.price}",
                  style: TextStyles.subtitle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackColor,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: const Divider(thickness: 1 , color: AppColor.grayColor,),
      ),
            ],
    );
    
  }
}