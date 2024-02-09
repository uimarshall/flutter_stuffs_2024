import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/brands/brand_show_case.dart';
import 'package:flutter_stuffs_2024/shared/widgets/layouts/grid_layout.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class TCategoryTabViewItems extends StatelessWidget {
  const TCategoryTabViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                const TBrandShowcase(
                  images: [
                    TImages.chairIcon,
                    TImages.centerTableIcon,
                    TImages.bedIcon,
                  ],
                ),
                const TBrandShowcase(
                  images: [
                    TImages.chairIcon,
                    TImages.centerTableIcon,
                    TImages.bedIcon,
                  ],
                ),
                const SizedBox(height: TSizes.spaceBetweenItems),
                // Header
                TSectionHeading(title: 'You might also like', onPressed: () {}),

                // Products itself
                TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return const TProductCardVertical();
                  },
                ),
                const SizedBox(height: TSizes.spaceBetweenItems),
              ],
            ),
          ),
        ]);
  }
}
