import 'package:flutter/material.dart';
import 'package:food_app/core/styles/colors.dart';

class QuantityMinusButton extends StatelessWidget {
  final VoidCallback onTap;
  const QuantityMinusButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColor.grayColor),
        ),
        child: const Icon(
          Icons.remove,
          size: 20,
        ),
      ),
    );
  }
}

class QuantityAddButton extends StatelessWidget {
  final VoidCallback onTap;
  const QuantityAddButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColor.grayColor),
        ),
        child: const Icon(
          Icons.add,
          size: 20,
          color: Colors.green,
        ),
      ),
    );
  }
}
