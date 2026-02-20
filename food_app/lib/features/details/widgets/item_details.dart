import 'package:flutter/material.dart';
import 'package:food_app/features/details/widgets/bottom_addremove.dart';
import 'package:food_app/features/details/widgets/bottom_heart.dart';
import 'package:food_app/features/details/widgets/star.dart';
import 'package:food_app/features/details/widgets/text_details.dart';
import 'package:food_app/features/home/data/product_model.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key , required this.model});
  final ProductModel model;
  
  @override
  State<ItemDetails> createState() => _ItemDetailsState();
  
}

class _ItemDetailsState extends State<ItemDetails> {
  
  int quantity = 1;
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.model.name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const BottomHeart(),
                      ],
                    ),
                    const SizedBox(height: 8),
                      Text(
                      widget.model.weight,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomAddRemove(
                          onChanged: (value) {
                            setState(() {
                              quantity = value;
                            });
                          },
                        ),
                        Text(
                          "\$${(widget.model.price * quantity).toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    const Divider(),
                    const SizedBox(height: 8),
                    TextDetails(
                      detailText:
                          "Apples are nutritious. Apples may be good for weight loss. "
                          "Apples may be good for your heart. As part of a healthful "
                          "and varied diet.",
                    ),

                    const SizedBox(height: 8),
                    const Divider(),
                    const SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nutrition",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text("100gr"),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    const Divider(),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: const [
                            Star(),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
  }
}