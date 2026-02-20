import 'package:flutter/material.dart';

class Star extends StatefulWidget {
  const Star({super.key});

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              rating = index + 1;
            });
          },
          child: Icon(
            index < rating
                ? Icons.star
                : Icons.star_border,
            color: Colors.orange,
            size: 20,
          ),
        );
      }),
    );
  }
}