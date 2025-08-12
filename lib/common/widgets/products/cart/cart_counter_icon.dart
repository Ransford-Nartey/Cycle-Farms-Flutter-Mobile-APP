import 'package:flutter/material.dart';
import 'package:fish_feeds_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class UCartContainerIcon extends StatelessWidget {
  const UCartContainerIcon({
    super.key,
  });

  // final bool dark;dark

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);

    return Stack(
      children: [

        /// Bag Icon | Cart Icon
        IconButton(
            onPressed: (){},
            icon: Icon(Iconsax.shopping_bag),
            color: dark ? HkColors.dark : HkColors.light),

        /// Counter Text
        Positioned(
          right:1.9,
          left:20,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: dark  ? HkColors.dark : HkColors.light,
                shape: BoxShape.circle
            ),
            child: Center(
              child: Text('2',
                  style: Theme.of(context)
                      .textTheme.labelLarge!.
                  apply(fontSizeFactor:0.8, color: dark ? HkColors.light  : HkColors.light )
              ),
            ),
          ),
        )
      ],
    );
  }
}
