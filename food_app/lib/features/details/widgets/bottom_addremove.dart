import 'package:flutter/material.dart';

class BottomAddRemove extends StatefulWidget {
  final int initialQuantity;
  final ValueChanged<int>? onChanged; 

  const BottomAddRemove({
    super.key,
    this.initialQuantity = 1,
    this.onChanged,
  });

  @override
  State<BottomAddRemove> createState() => _BottomAddRemoveState();
}

class _BottomAddRemoveState extends State<BottomAddRemove> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialQuantity;
  }

  void _increment() {
    setState(() {
      quantity++;
    });
    if (widget.onChanged != null) widget.onChanged!(quantity);
  }

  void _decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
      if (widget.onChanged != null) widget.onChanged!(quantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: _decrement,
          child: const Icon(
            Icons.remove,
            size: 28,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            quantity.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: _increment,
          child: const Icon(
            Icons.add,
            size: 28,
            color: Color(0xff53B175),
          ),
        ),
      ],
    );
  }
}