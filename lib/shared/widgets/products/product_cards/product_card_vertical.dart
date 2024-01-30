import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/styles/shadows.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/icons/t_circular_icon.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // Container with side paddings, color, edges, shadow and radius
    return Container(
      width: 180,
      // margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: dark ? TColors.darkGrey.withOpacity(0.1) : Colors.white,
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        boxShadow: [
          TShadowStyle.verticalProductShadow,
        ],
      ),
      child: Column(
        children: [
          // Thumbnails, Wishlist Button, Discount tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const TRoundedImage(
                  imgUrl: TImages.shoe,
                  applyImageRadius: true,
                ),
                // Sale Tag
                Positioned(
                  top: 12,
                  // right: 0,
                  child: TRoundedContainer(
                    // width: 40,
                    // height: 40,
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Center(
                      child: Text(
                        '20%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                ),
                // Favourite icon button
                Positioned(
                  top: 1,
                  right: 1,
                  child: TCircularIcon(
                    width: 40,
                    height: 40,
                    icon: Icons.favorite,
                    color: TColors.secondary,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )

          // Details
        ],
      ),
    );
  }
}
