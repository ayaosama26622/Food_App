import 'package:flutter/material.dart';

class CheckoutRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isBold;

  const CheckoutRow({
    super.key,
    required this.title,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}