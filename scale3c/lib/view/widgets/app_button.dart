import 'package:flutter/material.dart';

import '../../shared/gaps/gaps.dart';

class AppButon extends StatelessWidget {
  const AppButon({required this.onPressed, required this.child, super.key});

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(
            Theme.of(context).colorScheme.primary),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: large),
        child: child,
      ),
    );
  }
}
