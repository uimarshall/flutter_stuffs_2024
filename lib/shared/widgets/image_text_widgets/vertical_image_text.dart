import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.textColor = TColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBetweenItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              padding: const EdgeInsets.all(TSizes.sm),
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? // the ?? means if the background color is null then use the listed color
                        (THelperFunctions.isDarkMode(context)
                            ? TColors.darkGrey
                            : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: THelperFunctions.isDarkMode(context)
                      ? TColors.light
                      : TColors.dark, // color: TColors.dark,
                ),
              ),
            ),

            const SizedBox(height: TSizes.spaceBetweenItems / 2),
            SizedBox(
              width: 60.0,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
