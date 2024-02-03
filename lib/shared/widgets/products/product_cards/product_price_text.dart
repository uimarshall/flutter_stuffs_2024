import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySymbol = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.isLinedThrough = false,
  });

  final String currencySymbol, price;
  final int maxLines;
  final bool isLarge;
  final bool isLinedThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySymbol + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: isLinedThrough
                  ? TextDecoration.lineThrough
                  : TextDecoration.none)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: isLinedThrough
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
    );
  }
}
