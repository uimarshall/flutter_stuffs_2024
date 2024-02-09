import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_circular_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/layouts/grid_layout.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products.cart/cart_menu_badge.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/enums.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterBadge(onPressed: () {}, iconColor: TColors.accent)
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 440,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      // ListView is used here because it's also scrollable and we can't use Column be cause of unbounded height.
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // To stop scrolling
                      children: [
                        const SizedBox(height: TSizes.spaceBetweenItems),
                        // Search bar
                        TSearchContainer(
                          text: 'Search for products',
                          showBorder: true,
                          showBackgroundColor: false,
                          padding: EdgeInsets.zero,
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBetweenSections,
                        ),
                        // Featured Brands
                        TSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                          textColor: THelperFunctions.isDarkMode(context)
                              ? TColors.white
                              : TColors.darkGrey,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBetweenItems / 1.5,
                        ),
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: TRoundedContainer(
                                  padding: EdgeInsets.all(TSizes.sm),
                                  showBorder: true,
                                  backgroundColor: Colors.transparent,
                                  child: Row(
                                    children: [
                                      // Icon
                                      Flexible(
                                        child: TCircularImage(
                                          isNetworkImage: false,
                                          image: TImages.bedIcon,
                                          backgroundColor: Colors.transparent,
                                          overlayColor:
                                              THelperFunctions.isDarkMode(
                                                      context)
                                                  ? TColors.white
                                                  : null,
                                        ),
                                      ),
                                      const SizedBox(
                                          width: TSizes.spaceBetweenItems / 2),
                                      // Texts
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const TBrandTitleWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSize: TextSizes.lg,
                                            ),
                                            const SizedBox(
                                                height:
                                                    TSizes.spaceBetweenItems /
                                                        2),
                                            Text(
                                              '231 products',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .apply(
                                                      color: THelperFunctions
                                                              .isDarkMode(
                                                                  context)
                                                          ? TColors.white
                                                          : TColors.darkGrey),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  )),
            ];
          },
          body: Container(
            padding: const EdgeInsets.all(16),
            child: Text('Store',
                style: Theme.of(context).textTheme.headlineMedium),
          ),
        ));
  }
}
