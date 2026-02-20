import 'package:flutter/material.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/features/cart/data/product_cart.dart';
import 'package:food_app/features/cart/widgets/add_remove.dart';


class CardItem extends StatefulWidget {
  const CardItem({super.key , required this.item , required this.index});
  final ProductCart item;
  final int index;

  @override
  State<CardItem> createState() => _ItemCardState();
}

class _ItemCardState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.item.image),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          widget.item.name,
                          style: TextStyles.subtitle.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColor.blackColor,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close , color: AppColor.grayColor,),
                        onPressed: () {
                          setState(() {
                            CartProduct.removeAt(widget.index);
                          });
                        },
                      ),
                    ],
                  ),
                  Text(
                    widget.item.weight,
                    style: TextStyles.body.copyWith(
                      color: AppColor.grayColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          QuantityMinusButton(onTap: () {
                            if (widget.item.quantity > 1) {
                              setState(() {
                                widget.item.quantity--;
                              });
                            }
                          }),
                          const SizedBox(width: 16),
                          Text(
                            widget.item.quantity.toString(),
                            style: TextStyles.subtitle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 16),
                          QuantityAddButton(onTap: () {
                            setState(() {
                              widget.item.quantity++;
                            });
                          }),
                        ],
                      ),
                      Text(
                        "\$${(widget.item.price * widget.item.quantity).toStringAsFixed(2)}",
                        style: TextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(thickness: 1),
        const SizedBox(height: 16),
      ],
    );
  }
}
