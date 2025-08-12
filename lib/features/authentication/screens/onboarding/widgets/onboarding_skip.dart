
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fish_feeds_app/features/authentication/controller/onboarding/onboarding_controller.dart';

import '../../../../../utils/helpers/device_helpers.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Obx(
        () =>controller.currentIndex.value == 2 ? SizedBox() : Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child:TextButton(onPressed: controller.skipPage, child: Text('Skip'))),
    );
  }
}
