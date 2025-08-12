 import 'package:flutter/material.dart';
import 'package:fish_feeds_app/common/styles/padding.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/widgets/buttons/social_buttons.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/widgets/login_signup/form_divider.dart';
import 'package:fish_feeds_app/utils/constants/sizes.dart';
import 'package:fish_feeds_app/utils/constants/texts.dart';

 class LoginScreen extends StatelessWidget {
   const LoginScreen ({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:AppBar() ,
       body:SingleChildScrollView(
         child: Padding(
           padding: UPadding.screenPadding,
          child: Column(
           crossAxisAlignment:CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             //--Header
             //Title & SubTitle
              ULoginHeader(),
             SizedBox(height: HkSizes.spaceBtwSections),


             //---[Form]
             ULoginForm(),
             SizedBox(height: HkSizes.spaceBtwSections),

             ///---[Divider]----
             UFormDivider(title: UTexts.orSignInWith),
              SizedBox(height: HkSizes.spaceBtwSections,),
             ///----[Footer]------

             ///Social Buttons
             USocialButtons(),

           ],
         ),
              ),
       ),
     );
   }
 }





