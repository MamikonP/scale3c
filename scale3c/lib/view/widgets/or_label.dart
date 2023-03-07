import 'package:flutter/material.dart';

import '../../shared/gaps/gaps.dart';
import 'app_text.dart';

class OrLabel extends StatelessWidget {
  const OrLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(medium),
      child: AppText(
        text: 'or',
        color: Theme.of(context).colorScheme.primaryContainer,
        textAlign: TextAlign.center,
        isBold: true,
        fontSize: 16,
      ),
    );
  }
}
