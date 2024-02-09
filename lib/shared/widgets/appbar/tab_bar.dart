import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
        color: dark ? TColors.black : TColors.white,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          labelColor: dark ? TColors.white : TColors.black,
          unselectedLabelColor: dark
              ? TColors.white.withOpacity(0.5)
              : TColors.black.withOpacity(0.5),
          indicatorColor: dark ? TColors.primary : TColors.secondary,
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
