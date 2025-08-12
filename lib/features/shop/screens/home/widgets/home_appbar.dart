
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return UAppBar(

      ///Title & Subtitle
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Title
          Text(UTexts.homAppBarTitle,
              style: Theme.of(context).textTheme.labelMedium!.apply(color: HkColors.grey)),

          ///Subtitle
          Text(UTexts.homeAppBarSubTitle,
              style: Theme.of(context).textTheme.headlineSmall!.apply(color: HkColors.white)),
        ],
      ),

      actions: [

        ///Bag Icon
        UCartContainerIcon()
      ],
    );
  }
}
