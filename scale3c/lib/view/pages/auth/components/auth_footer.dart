import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../shared/gaps/gaps.dart';
import '../../../constants/spacing_direction.dart';
import '../../../widgets/spacing.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    required this.text,
    required this.spanText,
    required this.callback,
    super.key,
  });

  final String text;
  final String spanText;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),
        children: <InlineSpan>[
          WidgetSpan(
              child: Spacing(
            medium,
            direction: SpacingDirection.horizontal,
          )),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = callback,
            text: spanText,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
