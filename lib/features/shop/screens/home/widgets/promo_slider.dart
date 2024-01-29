import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/controllers/home_controller.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TPromoCarouselSlider extends StatelessWidget {
  const TPromoCarouselSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
        HomeController()); // Get an instance of the Home controller class
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            // autoPlay: true,
            // autoPlayInterval: const Duration(seconds: 3),
            // autoPlayAnimationDuration:
            //     const Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,

            scrollDirection: Axis.horizontal,
          ),
          items: banners.map((url) => TRoundedImage(imgUrl: url)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBetweenItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 20.0,
                    height: 5.0,
                    margin: const EdgeInsets.only(right: 10.0),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? TColors.primary
                        : Colors.grey,
                    radius: 20.0,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
