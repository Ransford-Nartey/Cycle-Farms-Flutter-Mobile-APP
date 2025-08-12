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

import '../../../../utils/helpers/device_helpers.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: ()=> Get.offAll(() => LoginScreen()), icon: Icon(CupertinoIcons.clear)),
          ],),
        body: SingleChildScrollView(
          child: Padding(
            padding: UPadding.screenPadding,
            child: Column(
              children: [
                /// Image
                Image.asset(UImages.mailSentImage, height: UDeviceHelper.getScreenHeight(context) * 0.5),
                SizedBox(height: HkSizes.spaceBtwItems),
                /// Title
                Text(UTexts.verifyEmailTitle, style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(height: HkSizes.spaceBtwItems),
                /// Email
                Text('rnartey537@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(height: HkSizes.spaceBtwItems),
                /// SubTitle
                Text(UTexts.verifyEmailSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign:TextAlign.center),
                SizedBox(height: HkSizes.spaceBtwSections),

                /// Continue
                UElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
                  title: UTexts.accountCreatedTitle,
                  subTitle: UTexts.accountCreatedSubTitle,
                  image: UImages.accountCreatedImage,
                  onTap: (){},
                )), child: Text(UTexts.uContinue)),

                /// Resend Email
                SizedBox(
                  width:double.infinity,
                  child: TextButton(onPressed:(){}, child: Text(UTexts.resendEmail)),
                ),
              ],
            ),
          ),
        )
    );
  }
}
