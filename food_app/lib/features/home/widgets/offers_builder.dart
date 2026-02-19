import 'package:flutter/material.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/features/home/widgets/item_card.dart';
import 'package:food_app/features/home/data/product_model.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Exclusive Offer" , style: TextStyles.title,),
            TextButton(onPressed: () {}, child: Text("See All")),
          ],
        ),
        
        SizedBox(
          height: 225,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              var model = offers[index];
              return ItemCard(model: model,);
            },
            separatorBuilder:(context,index) => const SizedBox(width:10),
            itemCount: offers.length,
        )
        ),
      ],
    );
  }
}
