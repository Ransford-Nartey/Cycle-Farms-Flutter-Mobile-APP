import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/images.dart';
import '../../../../../../utils/constants/sizes.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Button
        buildButton(UImages.googleIcon, () {}),

        SizedBox(width: HkSizes.spaceBtwItems),

        /// Facebook Button
        buildButton(UImages.facebookIcon, () {}),
      ],
    );
  }

  Container buildButton(String image, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF00868F)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          image,
          height: HkSizes.iconMd,
          width: HkSizes.iconMd,
        ),
      ),
    );
  }
}
