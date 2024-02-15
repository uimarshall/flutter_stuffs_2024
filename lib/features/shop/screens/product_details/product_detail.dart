import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_stuffs_2024/shared/widgets/icons/t_circular_icon.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image slider
            TProductImageSlider(),
            // Product details

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Ratings & share Button
                  TRatingAndShare(),

                  // Price,Title,Stock,& Brand
                  TProductMetaData(
                    productPrice: '\$290',
                  )

                  // Attributes
                  // Checkout Button
                  // Description
                  // Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
