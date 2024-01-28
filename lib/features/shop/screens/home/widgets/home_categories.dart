import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            title: 'Shoes',
            image: TImages.shoe,
            onTap: () {},
          );
        },
      ),
    );
  }
}
