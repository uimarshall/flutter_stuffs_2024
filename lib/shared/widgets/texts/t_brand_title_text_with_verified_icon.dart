import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/t_brand_title_text.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/enums.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
                title: title,
                maxLines: maxLines,
                color: textColor,
                textAlign: textAlign,
                brandTextSize: brandTextSize)),
        // Text(
        //   'Nike',
        //   overflow: TextOverflow.ellipsis,
        //   maxLines: 1,
        //   style: Theme.of(context).textTheme.labelMedium,
        // ),
        const SizedBox(width: TSizes.sm),
        Icon(
          Icons.verified,
          color: iconColor,
          size: TSizes.iconSizeXS,
        ),
      ],
    );
  }
}
