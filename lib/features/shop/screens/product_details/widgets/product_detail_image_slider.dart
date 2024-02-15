import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_stuffs_2024/shared/widgets/icons/t_circular_icon.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            // Main large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Image(image: AssetImage(TImages.shoe)),
                )),
            // Image Slider
            Positioned(
              bottom: 30,
              right: 0,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBetweenItems,
                  ),
                  itemBuilder: (_, index) => TRoundedImage(
                    imgUrl: TImages.fridgeIcon,
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(
                      color: TColors.primary,
                      width: 1,
                    ),
                    padding: const EdgeInsets.all(TSizes.sm),
                  ),
                ),
              ),
            ),
            // App bar icons
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Icons.favorite,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
