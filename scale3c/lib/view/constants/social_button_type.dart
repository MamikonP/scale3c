import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SocialButtonType {
  facebook(Icons.facebook),
  twitter(Icons.two_k_outlined),
  linkedin(Icons.link);

  const SocialButtonType(this.iconData);

  final IconData iconData;
}
