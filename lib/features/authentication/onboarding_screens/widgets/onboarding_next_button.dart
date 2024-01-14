import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(context),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.primary
              : TColors.dark,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        // child: const Text('Next'),
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
