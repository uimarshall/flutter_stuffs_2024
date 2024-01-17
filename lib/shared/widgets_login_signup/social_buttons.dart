import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class FormSocialButtons extends StatelessWidget {
  const FormSocialButtons({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Google

        Container(
          // width: 50.0,
          // height: 50.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? TColors.darkGrey : TColors.black,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(100.0),
            // shape: BoxShape.circle,
            // color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0.0, 5.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(TImages.facebook),
              width: TSizes.iconSizeMD,
              height: TSizes.iconSizeMD,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: TSizes.spaceBetweenItems),
        // Facebook

        Container(
          // width: 50.0,
          // height: 50.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? TColors.darkGrey : TColors.black,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(100.0),
            // shape: BoxShape.circle,
            // color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0.0, 5.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(TImages.linkedin),
              width: TSizes.iconSizeMD,
              height: TSizes.iconSizeMD,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
