import 'package:flutter/material.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/features/order/page/order_accepted.dart';
class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const CheckoutBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: MediaQuery.of(context).padding.bottom + 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 5,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0xffDADADA),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              )
            ],
          ),
          const SizedBox(height: 15),
          const Divider(thickness: 1.2),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Delivery",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.grayColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Select Method",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                )
              ],
            ),
          ),
          const Divider(thickness: 1.2, color: Color(0xffE5E5E5)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.grayColor,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/card.png',
                      
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                )
              ],
            ),
          ),
          const Divider(thickness: 1.2, color: Color(0xffE5E5E5)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Promo Code",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.grayColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Pick discount",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                )
              ],
            ),
          ),
          const Divider(thickness: 1.2, color: Color(0xffE5E5E5)),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total Cost",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:AppColor.grayColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$13.97",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 15),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              children: [
                TextSpan(
                  text:
                      "By placing an order you agree to our ",
                      style: TextStyle(
                        color: AppColor.grayColor,
                        fontWeight: FontWeight.w600,
                      )
                ),
                TextSpan(
                  text: "Terms And Conditions",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
                child: MainButton(
                text: 'Place Order',
                onPressed: () { 
                  pushTo(context, OrderAcceptedScreen());
                }
    )
            )
        ],
      ),
    );
  }
}