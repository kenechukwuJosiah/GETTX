import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/controllers/onboarding_screen_controller.dart';
import 'package:login_app/src/features/authentication/models/on_boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: controller.pages,
            enableSideReveal: true,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            liquidController: controller.controller,
            onPageChangeCallback: controller.onCurrentPageEnter,
          ),
          Positioned(
              bottom: 80.0,
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    onPrimary: Colors.white),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                      color: KDarkColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
                onPressed: () => controller.next(),
              )),
          Positioned(
              top: 30,
              right: 20,
              child: TextButton(
                onPressed: () => controller.skip(),
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.currentPage.value,
                  count: 3,
                  effect: const WormEffect(
                      activeDotColor: Color(0xff272727), dotHeight: 5.0),
                )),
          )
        ],
      ),
    );
  }
}
