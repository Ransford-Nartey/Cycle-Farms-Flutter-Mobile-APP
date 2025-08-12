import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fish_feeds_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:fish_feeds_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:fish_feeds_app/features/authentication/screens/onboarding/widgets/onboardingNavigation.dart';
import 'package:fish_feeds_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:fish_feeds_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:fish_feeds_app/utils/constants/images.dart';
import 'package:fish_feeds_app/utils/constants/sizes.dart';
import 'package:fish_feeds_app/utils/helpers/device_helpers.dart';
import 'package:lottie/lottie.dart';
import 'package:fish_feeds_app/utils/constants/texts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common/widgets/button/elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen ({super.key});


  @override
  Widget build(BuildContext context){
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: HkSizes.defaultSpace),
        child: Stack(
        children: [

          // Scrollable Page
          PageView(
            controller: controller.pageController ,
            onPageChanged:  controller.updatePageIndicator,
            children: [
              OnboardingPage(animation: UImages.onboarding1Animation, title:UTexts.onBoardingTitle1, subTitle: UTexts.onBoardingSubtitle1,),
              OnboardingPage(animation: UImages.onboarding2Animation, title:UTexts.onBoardingTitle2, subTitle: UTexts.onBoardingSubtitle2,),
              OnboardingPage(animation: UImages.onboarding3Animation, title:UTexts.onBoardingTitle3, subTitle: UTexts.onBoardingSubtitle3,),

            ],

    ),

          //Indicator
          OnBoardingDotNavigation(),
          //Bottom Button
          OnboardingNextButton(),

          //Skip Button
          OnboardingSkipButton()
        ],
      )
    ),
    );
  }
}








