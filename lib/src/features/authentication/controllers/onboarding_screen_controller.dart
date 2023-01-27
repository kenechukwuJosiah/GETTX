import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_string.dart';
import '../models/on_boarding_model.dart';
import '../screens/on_boarding/onboarding_page.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPage(
        model: OnBoardingModel(
      bgColor: OnboardingPageColor1,
      color: Colors.black,
      counterText: OnboardingCounter1,
      image: OnboardingImage1,
      subTitle: OnboardingSubtitle1,
      title: OnboardingTitle1,
    )),
    OnboardingPage(
        model: OnBoardingModel(
      bgColor: OnboardingPageColor2,
      counterText: OnboardingCounter2,
      color: const Color(0xBEFFFFFF),
      image: OnboardingImage2,
      subTitle: OnboardingSubtitle2,
      title: OnboardingTitle2,
    )),
    OnboardingPage(
        model: OnBoardingModel(
      bgColor: OnboardingPageColor3,
      color: Color(0xBEFFFFFF),
      counterText: OnboardingCounter3,
      image: OnboardingImage3,
      subTitle: OnboardingSubtitle3,
      title: OnboardingTitle3,
    )),
  ];

  skip() {
    controller.jumpToPage(page: 2);
  }

  next() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onCurrentPageEnter(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
