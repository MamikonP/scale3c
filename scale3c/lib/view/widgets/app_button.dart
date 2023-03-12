import 'package:flutter/material.dart';

import '../../shared/gaps/gaps.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onPressed,
    required this.child,
    this.outlined = false,
    super.key,
  });

  final void Function() onPressed;
  final Widget child;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        FocusManager.instance.primaryFocus?.unfocus();
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        elevation: !outlined ? 1 : 0,
        side: !outlined
            ? BorderSide.none
            : BorderSide(color: Theme.of(context).colorScheme.secondary),
        backgroundColor: outlined
            ? Colors.transparent
            : Theme.of(context).colorScheme.primary,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: large),
        child: child,
      ),
    );
  }
}
