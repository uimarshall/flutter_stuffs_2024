import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/authentication/screens/login/login.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/home/home_screen.dart';

import 'package:flutter_stuffs_2024/screens/login_form_styles.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex =
      0.obs; // Current Page Index for PageView Builder & Smooth Page Indicator

  // update current index when Page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    // update();
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
    // pageController.animateToPage(index,
    //     duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  // Update current index & jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const Login());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
      pageController.jumpToPage(page);
    }
  }
  // void nextPage() {
  //   if (currentPageIndex.value == 2) {
  //     // currentPageIndex.value = 0;
  //     // pageController.jumpToPage(0);
  //     Get.to(() => const Login());
  //   } else {
  //     int page = currentPageIndex.value + 1;
  //     pageController.nextPage(
  //         duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  //     pageController.jumpToPage(page);
  //   }
  // }

  // Update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    // update();
  }
}
