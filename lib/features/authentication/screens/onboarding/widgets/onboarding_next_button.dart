import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:fish_feeds_app/features/authentication/controller/onboarding/onboarding_controller.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        left: 0,
        right: 0,
        bottom: HkSizes.spaceBtwItems,
        child: UElevatedButton(
          onPressed: controller.nextPage,
          child:Obx(()=> Text(controller.currentIndex.value == 2 ? 'Get Started': 'Next')),
        ));
  }
}
