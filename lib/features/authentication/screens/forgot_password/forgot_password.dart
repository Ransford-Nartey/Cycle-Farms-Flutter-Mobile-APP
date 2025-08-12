import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fish_feeds_app/common/styles/padding.dart';
import 'package:fish_feeds_app/common/widgets/button/elevated_button.dart';
import 'package:fish_feeds_app/features/authentication/screens/forgot_password/reset_password.dart';
import 'package:fish_feeds_app/utils/constants/sizes.dart';
import 'package:fish_feeds_app/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';


class ForgotPasswordScreen extends StatelessWidget{

  const ForgotPasswordScreen({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding:UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ----[Header[]-------
              /// Title
                Text(UTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: HkSizes.spaceBtwItems / 2),
              /// SubTitle
              Text(UTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),

                SizedBox(height: HkSizes.spaceBtwSections * 2),

              ///-----[Form]-----
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                    labelText: UTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right)
                    ),
                  ),

                  SizedBox(height: HkSizes.spaceBtwItems),

                  UElevatedButton(onPressed: () => Get.to(() => ResetPasswordScreen()), child: Text(UTexts.submit)),
                ],
              )
            ],
          )
        ),
      ),
    );
  }

}