import 'package:ecomapp/const/colors.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CategoryWidget({
    required this.text,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected ? TColors.primary : Colors.white,
        border: Border.all(color: const Color.fromARGB(66, 99, 93, 93)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

