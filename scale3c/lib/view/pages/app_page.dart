import 'package:flutter/material.dart';

import '../../shared/gaps/gaps.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    required this.body,
    this.scrollable = false,
    this.footer,
    this.bodyPadding,
    super.key,
  });

  final Widget body;
  final Widget? footer;
  final bool scrollable;
  final EdgeInsets? bodyPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: bodyPadding ?? EdgeInsets.zero,
              child: Center(
                child: SingleChildScrollView(
                  child: body,
                ),
              ),
            ),
          ),
          if (footer != null)
            Padding(
              padding: EdgeInsets.only(bottom: extraLarge),
              child: footer,
            ),
        ],
      ),
    );
  }
}
