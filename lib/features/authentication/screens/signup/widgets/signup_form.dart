
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fish_feeds_app/features/authentication/screens/signup/verify_email.dart';
import 'package:fish_feeds_app/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class USignupForm extends StatelessWidget {
  const USignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[

        /// First name & last Name
        Row(
          children: [
            /// First name
            Expanded(child: TextFormField(
                decoration: InputDecoration(
                    labelText: UTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)
                )
            )),
            SizedBox(width: HkSizes.spaceBtwInputFields),

            /// Last name
            Expanded(child: TextFormField(
              decoration: InputDecoration(
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user)
              ),
            )),
          ],
        ),
        SizedBox(height: HkSizes.spaceBtwInputFields),
        ///Email
        TextFormField(
          decoration: InputDecoration(
              labelText: UTexts.email,
              prefixIcon: Icon(Iconsax.direct_right)
          ),
        ),
        SizedBox(height: HkSizes.spaceBtwInputFields),
        /// Phone number
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: HkSizes.spaceBtwInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: UTexts.password,
              suffix: Icon(Iconsax.eye)
          ),
        ),
        SizedBox(height: HkSizes.spaceBtwInputFields / 2),

        /// Privacy Policy
        UPrivacyPolicyCheckbox(),
        SizedBox(height: HkSizes.spaceBtwItems),


        ///Create Account
        UElevatedButton(onPressed: () => Get.to(() => VerifyEmailScreen()), child: Text(UTexts.createAccount))


      ],
    );
  }
}

