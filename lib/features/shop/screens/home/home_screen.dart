import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/circular_container.dart';

import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products.cart/cart_menu_badge.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

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
                ),
                SizedBox(height: TSizes.spaceBetweenSections),
                // Add categories list view
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      // Heading
                      TSectionHeading(
                        title: 'Popular products categories',
                        showActionButton: false,
                      ),
                      SizedBox(height: TSizes.spaceBetweenItems),
                      // Categories
                      THomeCategories(),
                    ],
                  ),
                )
              ]),
            ),
            // Body section of home page
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  TPromoCarouselSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBetweenSections),
                  // Featured Popular Products
                  TProductCardVertical()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
