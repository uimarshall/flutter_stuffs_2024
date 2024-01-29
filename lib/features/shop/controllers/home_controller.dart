import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  // Create variable pointing to the index of the carousel
  final carouselCurrentIndex = 0.obs; // 1st index = 0
  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index;
  }
}
