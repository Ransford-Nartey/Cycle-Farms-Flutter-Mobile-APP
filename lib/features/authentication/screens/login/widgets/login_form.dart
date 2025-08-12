import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fish_feeds_app/features/authentication/screens/forgot_password/forgot_password.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../signup/signup.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        //Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),

        SizedBox(height: HkSizes.spaceBtwInputFields),
        //Password
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: UTexts.password,
              suffix: Icon(Iconsax.eye)
          ),
        ),

        SizedBox(height: HkSizes.spaceBtwInputFields / 2),


        //Remember Me & Forgot Password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){}),
                Text(UTexts.rememberMe)
              ],
            ),


            //ForgetPassword
            TextButton(
              onPressed: () => Get.to(() => ForgotPasswordScreen()) ,
              child: Text(UTexts.forgetPassword),
            )
          ],
        ),

        SizedBox(height: HkSizes.spaceBtwSections,),

        //Sign In
        UElevatedButton(onPressed: () => Get.to(() =>NavigationMenu()), child:Text(UTexts.signIn)),

        SizedBox(height: HkSizes.spaceBtwItems/ 2),

        //Create Account
       SizedBox(
         width:double.infinity,
           child: OutlinedButton(onPressed: () => Get.to(() => SignUpScreen()), child:Text(UTexts.createAccount))),
      ],
    );
  }
}
