import 'package:ecomapp/const/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.onPressed
  });
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: PrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            //fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}