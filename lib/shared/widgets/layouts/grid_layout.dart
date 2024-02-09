import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent =
        288, //length of the grid or height of the product card
  });

  final int itemCount;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
    );
  }
}
