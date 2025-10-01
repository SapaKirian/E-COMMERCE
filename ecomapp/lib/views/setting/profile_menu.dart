import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProflieMenu extends StatelessWidget {
  const TProflieMenu({
    super.key,
    required this.onPressed,
    required this.title,
    required this.value,
    this.icon = CupertinoIcons.arrow_right,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(title, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis)),
            Expanded(flex: 5, child: Text(value, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis)),
            Expanded(child: Icon(icon, size: 18,))
          ],
        ),
        ),
    );
  }
}
