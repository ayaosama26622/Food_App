import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF3F3F3),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.green,
              ),
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
