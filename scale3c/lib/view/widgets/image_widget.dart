import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/image_type.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    required this.assetImage,
    this.imageType = ImageType.svg,
    this.boxFit = BoxFit.none,
    super.key,
  });

  final String assetImage;
  final ImageType imageType;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    if (imageType == ImageType.svg) {
      return SvgPicture.asset(
        assetImage,
        fit: boxFit,
      );
    }
    return Image.asset(
      assetImage,
      fit: boxFit,
    );
  }
}
