import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/image_type.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    required this.assetImage,
    this.imageType = ImageType.svg,
    super.key,
  });

  final String assetImage;
  final ImageType imageType;

  @override
  Widget build(BuildContext context) {
    if (imageType == ImageType.svg) {
      return SvgPicture.asset(
        assetImage,
        fit: BoxFit.cover,
      );
    }
    return Image.asset(
      assetImage,
      fit: BoxFit.none,
    );
  }
}
