import 'package:flutter/material.dart';
import 'package:food_app/features/home/data/product_model.dart';
import 'package:food_app/features/home/widgets/item_card.dart';

class FiltereGridView extends StatelessWidget {
  const FiltereGridView({
    super.key,
    required this.products,
  });
    final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    padding: const EdgeInsets.all(16),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 0,
      mainAxisExtent: 225,
        ),
        itemBuilder: (context , index){
        return ItemCard(model: products[index]);
        },
        itemCount: products.length,
        );
  }
}
