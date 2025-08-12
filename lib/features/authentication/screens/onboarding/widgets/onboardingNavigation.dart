import 'package:flutter/material.dart';
import 'package:fish_feeds_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/helpers/device_helpers.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        bottom:UDeviceHelper.getBottomNavigationBarHeight() * 6,
        left: UDeviceHelper.getScreenWidth(context) / 3,
        right: UDeviceHelper.getScreenWidth(context) / 3,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked:(index) => controller.dotNavigationClick(index),
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 6.0,
          ),
        ));
  }
}
