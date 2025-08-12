import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fish_feeds_app/common/styles/padding.dart';
import 'package:fish_feeds_app/common/widgets/button/elevated_button.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/login.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/widgets/screens/success_screen.dart';
import 'package:fish_feeds_app/utils/constants/images.dart';
import 'package:fish_feeds_app/utils/constants/sizes.dart';
import 'package:fish_feeds_app/utils/constants/texts.dart';

import '../../../../../../utils/helpers/device_helpers.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen ({super.key, required this.title, required this.subTitle, required this.image, required this.onTap});

  final String title, subTitle, image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false),
        body: SingleChildScrollView(
          child: Padding(
            padding: UPadding.screenPadding,
            child: Column(
              children: [
                /// Image
                Image.asset(image, height: UDeviceHelper.getScreenHeight(context) * 0.5),
                SizedBox(height: HkSizes.spaceBtwItems),
                /// Title
                Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                SizedBox(height: HkSizes.spaceBtwItems),

                /// SubTitle
                Text(subTitle, style: Theme.of(context).textTheme.bodySmall, textAlign:TextAlign.center),
                SizedBox(height: HkSizes.spaceBtwSections),

                /// Continue
                UElevatedButton(onPressed: onTap, child: Text(UTexts.uContinue)),
              ],
            ),
          ),
        )
    );
  }
}
