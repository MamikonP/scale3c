import 'package:flutter/material.dart';

import '../../shared/constants.dart';
import '../../shared/gaps/gaps.dart';
import 'app_text.dart';
import 'image_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({required this.title, this.actions, super.key});

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: AppText(
        text: title,
        color: Theme.of(context).colorScheme.primaryContainer,
        isBold: true,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
