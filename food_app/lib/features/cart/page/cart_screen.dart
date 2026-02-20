import 'package:flutter/material.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/widgets/main_button.dart';
<<<<<<< HEAD
import 'package:food_app/features/Checkout/page/checkout_screen.dart';
=======
>>>>>>> 017cbd8cfc57da98a817d281a4f95f05b87ea482
import 'package:food_app/features/cart/data/product_cart.dart';
import 'package:food_app/features/cart/widgets/item_cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyles.title.copyWith(
            color: AppColor.blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: CartProduct.isEmpty
          ? const Center(child: Text("Cart is empty"))
          : ListView.builder(
              itemCount: CartProduct.length,
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              itemBuilder: (context, index) {
                  return CardItem(
                    index: index,
                  item: CartProduct[index] );
                
              },
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(16.0),
                child: MainButton(
                text: 'Go to Checkout',
<<<<<<< HEAD
                onPressed: () { 
                  CheckoutBottomSheet.show(context);
                }
=======
                onPressed: () { }
>>>>>>> 017cbd8cfc57da98a817d281a4f95f05b87ea482
    )
            )
    );

  }
}
