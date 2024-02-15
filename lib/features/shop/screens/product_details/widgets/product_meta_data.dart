import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_circular_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_price_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/product_title_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/enums.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
    // this.productName,
    this.productPrice,
    // this.productRating,
    // this.showProductName = false,
  });

  // final String? productName;
  final String? productPrice;
  // final String? productRating;
  // final bool showProductName;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Tag
        Row(
          children: [
            // Text(
            //   productName!,
            //   style: Theme.of(context).textTheme.titleMedium,
            // ),
            const SizedBox(height: 10),
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: Colors.white,
                    ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBetweenItems),

            // Price
            Text(
              productPrice!,
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: TSizes.spaceBetweenItems),
            const TProductPriceText(
              price: '125',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(width: TSizes.spaceBetweenItems / 1.5),
        // Title
        const TProductTitleText(title: 'Black Leather Jacket'),
        const SizedBox(width: TSizes.spaceBetweenItems / 1.5),

        // Stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status:'),
            const SizedBox(width: TSizes.spaceBetweenItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium!.apply(
                    color: TColors.success,
                  ),
            ),
          ],
        ),
        const SizedBox(width: TSizes.spaceBetweenItems / 1.5),
        // Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.bedIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(
              title: 'Pendle',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
        // Text(
        //   productRating!,
        //   style: Theme.of(context).textTheme.labelMedium,
        // ),
      ],
    );
  }
}
