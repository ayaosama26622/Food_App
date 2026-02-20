import 'package:flutter/material.dart';

class TextDetails extends StatefulWidget {
  final String detailText;
  final bool initiallyOpen;

  const TextDetails({
    super.key,
    required this.detailText,
    this.initiallyOpen = true,
  });

  @override
  State<TextDetails> createState() =>
      _TextDetails();
}

class _TextDetails extends State<TextDetails> {
  late bool isOpen;

  @override
  void initState() {
    super.initState();
    isOpen = widget.initiallyOpen;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Product Detail",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AnimatedRotation(
                turns: isOpen ? 0.5 : 0,
                duration: const Duration(milliseconds: 200),
                child: const Icon(Icons.keyboard_arrow_down),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          crossFadeState: isOpen
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: Text(
            widget.detailText,
            style: const TextStyle(
              color: Colors.grey,
              height: 1.5,
            ),
          ),
          secondChild: const SizedBox(),
        ),
      ],
    );
  }
}