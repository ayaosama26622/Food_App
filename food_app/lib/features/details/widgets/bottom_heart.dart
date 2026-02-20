import 'package:flutter/material.dart';

class BottomHeart extends StatefulWidget {
  const BottomHeart({super.key});

  @override
  State<BottomHeart> createState() => _BottomHeartState();
}

class _BottomHeartState extends State<BottomHeart> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
            );
  }
}