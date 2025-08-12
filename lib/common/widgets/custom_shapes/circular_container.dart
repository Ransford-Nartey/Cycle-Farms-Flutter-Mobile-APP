import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/device_helpers.dart';

class UCircularContainer extends StatelessWidget {
  const UCircularContainer({
    super.key,
     this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.backgroundColor = HkColors.white,
    this.padding,
    this.margin,
  });

  final double height, width, radius;
  final Color backgroundColor;
  final EdgeInsetsGeometry ? padding, margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: HkColors.white,
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
