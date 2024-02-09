import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/home/home_screen.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/icons/t_circular_icon.dart';
import 'package:flutter_stuffs_2024/shared/widgets/layouts/grid_layout.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: Text(
            'WishList',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCircularIcon(
                icon: Icons.add, onPressed: () => Get.to(const HomeScreen())),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        )));
  }
}
