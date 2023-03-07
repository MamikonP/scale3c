import 'package:flutter/material.dart';

import '../constants/spacing_direction.dart';

class Spacing extends StatelessWidget {
  const Spacing(
    this.gap, {
    this.direction = SpacingDirection.vertical,
    super.key,
  });

  final double gap;
  final SpacingDirection direction;

  @override
  Widget build(BuildContext context) {
    if (direction == SpacingDirection.horizontal) {
      return SizedBox(
        width: gap,
      );
    }
    return SizedBox(
      height: gap,
    );
  }
}
