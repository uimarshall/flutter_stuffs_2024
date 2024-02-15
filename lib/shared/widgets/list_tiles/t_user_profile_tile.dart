import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_circular_image.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const TCircularImage(
          image: TImages.avatar,
          width: 50,
          height: 50,
          // padding: 0,
        ),
        title: Text('John Doe',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white)),
        subtitle: Text('JohnDoe@email.com',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: TColors.grey)),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
            color: TColors.white,
          ),
        ));
  }
}
