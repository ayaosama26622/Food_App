import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/features/details/widgets/item_details.dart';
import 'package:food_app/features/home/data/product_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.model});
  final ProductModel model;
  

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F3F2),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 28,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.share),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * .3,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: const BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Center(
              child: Hero(
                tag: widget.model.tagKey,
                child: Image.asset(
                  widget.model.image,
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ),
          ItemDetails(model: widget.model),
        ],
      ),
      bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(16.0),
      child: MainButton(
      text: 'Add To Cart',
      onPressed: () {
      }
      ),
        )
    );
  }
}