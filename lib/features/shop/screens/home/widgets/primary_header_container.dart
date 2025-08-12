
import 'package:flutter/material.dart';
import 'package:fish_feeds_app/common/widgets/custom_shapes/rounded_edges_container.dart';
import '../../../../../common/widgets/custom_shapes/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/device_helpers.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: UDeviceHelper.getScreenHeight(context) * 0.4,
        color: HkColors.primary,
        child: Stack(
          children: [
      
            /// Circular Container
            Positioned(
              top: -150,
              right: -250,
              child: UCircularContainer(
                height:UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenWidth(context) * 0.4,
                backgroundColor: HkColors.white.withValues(alpha: 0.1),
              ),
            ),
      
      
            /// Circular Container
            Positioned(
              top:50,
              right: -250,
              child: UCircularContainer(
                height:UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenWidth(context) * 0.4,
                backgroundColor: HkColors.white.withValues(alpha: 0.1),
              ),
            ),
      
            /// Child
            child
          ],
        ),
      ),
    );
  }
}

