import 'package:ecomapp/const/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key, 
    required this.controller, 
    required this.hintText, 
    required this.text,
    this.isPassword = false, this.suffixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final String text;
  final bool? isPassword;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8,),
            Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
            TextField(
              controller: controller, 
              obscureText: isPassword!,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white )
                ),
                 focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey), 
                ),
                hintText: hintText,
                suffixIcon: isPassword! ? suffixIcon:null,
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: TextFieldColor,
                filled: true,
                contentPadding:  const EdgeInsets.all(16),
            ),),
          ],
        );
  }
}