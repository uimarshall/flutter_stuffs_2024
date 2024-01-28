import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';

import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products.cart/cart_menu_badge.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        // We use col because the elements will be aligned on the from top to bottom and scrollable
        child: Column(
          children: [
            // Add custom shape to the container by wrapping it with a ClipPath Widget.
            TPrimaryHeaderContainer(
              child: Column(children: [
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBetweenSections),
                // Add a search bar
                // TSearchBar(),
                TSearchContainer(
                  text: 'Search here',
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
