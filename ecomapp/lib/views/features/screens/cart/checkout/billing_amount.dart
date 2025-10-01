import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
              Text('\Rp.2.000.000', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('PPN', style: Theme.of(context).textTheme.bodyMedium),
              Text('\Rp.11.000', style: Theme.of(context).textTheme.labelLarge),
              
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ongkos Kirim', style: Theme.of(context).textTheme.bodyMedium),
              Text('\Rp.11.000', style: Theme.of(context).textTheme.labelLarge),
              
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: Theme.of(context).textTheme.bodyMedium),
              Text('\Rp.2.011.000', style: Theme.of(context).textTheme.labelLarge),
              
            ],
          ),
        ),
      ],
    );
  }
}