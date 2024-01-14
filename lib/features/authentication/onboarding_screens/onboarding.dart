import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter_stuffs_2024/features/authentication/onboarding_screens/onboarding_skip.dart';
import 'package:flutter_stuffs_2024/features/authentication/onboarding_screens/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_stuffs_2024/features/authentication/onboarding_screens/widgets/onboarding_next_button.dart';
import 'package:flutter_stuffs_2024/features/authentication/onboarding_screens/widgets/onboarding_page.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

import 'package:flutter_stuffs_2024/utils/constants/text_strings.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
        OnboardingController()); // create a new instance of Onboarding controller
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              // Page 1
              OnboardingPage(
                  image: TImages.onboarding1,
                  title: TTexts.onboarding1Title,
                  subtitle: TTexts.onboarding1Subtitle),
              // Page 2
              OnboardingPage(
                  image: TImages.onboarding2,
                  title: TTexts.onboarding2Title,
                  subtitle: TTexts.onboarding2Subtitle),
              // Page 3
              OnboardingPage(
                  image: TImages.onboarding3,
                  title: TTexts.onboarding3Title,
                  subtitle: TTexts.onboarding3Subtitle)
            ],
          ),
          // Skip button
          const OnboardingSkip(),
          // Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),
          // Circular Button

          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
