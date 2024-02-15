import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(children: [
          const Icon(
            Icons.star,
            color: Colors.amber,
            size: 24,
          ),
          const SizedBox(width: TSizes.spaceBetweenItems / 2),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '5.0',
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                const TextSpan(text: ' (200)'),
              ],
            ),
          ),
        ]),
        // Share Button
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: TSizes.iconSizeMD,
            ))
      ],
    );
  }
}
