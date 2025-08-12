

import 'package:flutter/material.dart';
import 'package:fish_feeds_app/common/styles/padding.dart';
import 'package:fish_feeds_app/common/widgets/button/elevated_button.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/widgets/buttons/social_buttons.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/widgets/login_signup/form_divider.dart';
import 'package:fish_feeds_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:fish_feeds_app/utils/constants/colors.dart';
import 'package:fish_feeds_app/utils/constants/sizes.dart';
import 'package:fish_feeds_app/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: UPadding.screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              /// -----[Header]--------
                Text(UTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(height: HkSizes.spaceBtwSections),


                /// -----[Form]------
                USignupForm(),

                SizedBox(height: HkSizes.spaceBtwSections),
                /// -----[Divider]------
                UFormDivider(title: UTexts.orSignInWith),
                SizedBox(height: HkSizes.spaceBtwSections),

                /// -----[Footer] ------
                USocialButtons()
              ],
            ),
        ),
      ),
    );
  }
}

