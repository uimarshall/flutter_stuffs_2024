import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products.cart/cart_menu_badge.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.darkGrey),
          ),
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          )
        ],
      ),
      // centerTitle: true,
      // showBackArrow: true,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: TColors.white,
          ),
          onPressed: () {},
        ),
        TCardCounterBadge(
          onPressed: () {},
        ),
      ],
    );
  }
}
