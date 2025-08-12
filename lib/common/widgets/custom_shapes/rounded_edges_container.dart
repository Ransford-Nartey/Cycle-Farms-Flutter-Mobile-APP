import 'package:flutter/material.dart';
import 'package:fish_feeds_app/common/widgets/custom_shapes/clipper/custom_rounded_clipper.dart';

class URoundedEdgesContainer extends StatelessWidget {
  const URoundedEdgesContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomRoundedEdges(),
      child: child,
    );
  }
}
