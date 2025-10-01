import 'package:flutter/material.dart';

class Productprice extends StatelessWidget {
  const Productprice({
    super.key,
    this.currencySign = 'Rp',
    required this.price,
    this.isLarge = false,
    this.maxLines = 1,
    this.lineThrought = false,
  });
  final String currencySign, price;
  final int maxLines;
  final bool isLarge, lineThrought;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrought?TextDecoration.lineThrough
      :null): Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrought?TextDecoration.lineThrough:null),
    );
  }
}
