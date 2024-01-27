import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';
import 'package:get/get.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    // this.centerTitle = false,
    this.showBackArrow = false,
    // this.backgroundColor,
    // this.elevation = 0.0,
  });

  final Widget? title;
  final List<Widget>? actions;
  final IconData? leadingIcon;
  // final bool centerTitle;
  // final Color? backgroundColor;
  // final double? elevation;
  final bool showBackArrow;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading:
            false, // This will prevent the back arrow from showing by default.
        title: title,
        actions: actions,
        leading: showBackArrow
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Get.back(),
              )
            : leadingIcon != null
                ? IconButton(
                    icon: Icon(leadingIcon),
                    onPressed: leadingOnPressed,
                  )
                : null,
        // centerTitle: centerTitle,
        // backgroundColor: backgroundColor,
        // elevation: elevation,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
