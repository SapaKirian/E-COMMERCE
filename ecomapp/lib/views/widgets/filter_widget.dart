import 'package:ecomapp/const/colors.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key, required this.controller, required this.hintText,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(1, 3)),
              ],
            ),
            child: TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Looking for shoes',
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            )),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.all(1.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: PrimaryColor,
          ),
          child: Image.asset('assets/images/sliders.png', scale: 2.3),
        )
      ],
    );
  }
}
