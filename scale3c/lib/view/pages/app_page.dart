import 'package:flutter/material.dart';

import '../../shared/gaps/gaps.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    required this.body,
    this.scrollable = false,
    this.footer,
    this.bodyPadding,
    this.appBar,
    super.key,
  });

  final Widget body;
  final Widget? footer;
  final bool scrollable;
  final EdgeInsets? bodyPadding;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: bodyPadding ?? EdgeInsets.zero,
                child: scrollable
                    ? SingleChildScrollView(
                        child: body,
                      )
                    : body,
              ),
            ),
            if (footer != null)
              Padding(
                padding: EdgeInsets.only(bottom: extraLarge),
                child: footer,
              ),
          ],
        ),
      ),
    );
  }
}
