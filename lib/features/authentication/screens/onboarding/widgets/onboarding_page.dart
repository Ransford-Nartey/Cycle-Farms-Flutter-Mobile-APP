import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/helpers/device_helpers.dart';


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.animation, required this.title,required this.subTitle
    ,});


   final String animation;
   final String title;
   final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:UDeviceHelper.getAppBarHeight() ),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          Text(subTitle, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}