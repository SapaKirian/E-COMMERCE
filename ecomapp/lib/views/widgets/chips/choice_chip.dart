import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/views/widgets/circularContainer.dart';

class choicechip extends StatelessWidget {
  const choicechip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : const Text('text'),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor ? CircularContainer(width: 50,height: 50, backgroundColor: HelperFunction.getColor(text)!): null,
        shape: isColor? const CircleBorder() : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? HelperFunction.getColor(text)! : null,
      ),
    );
  }
}
