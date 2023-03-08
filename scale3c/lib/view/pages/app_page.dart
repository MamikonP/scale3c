import 'package:flutter/material.dart';

import '../../shared/gaps/gaps.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    required this.body,
    this.scrollable = false,
    this.footer,
    this.bodyPadding,
    this.centered = true,
    super.key,
  });

  final Widget body;
  final Widget? footer;
  final bool scrollable;
  final EdgeInsets? bodyPadding;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: bodyPadding ?? EdgeInsets.zero,
                child: centered
                    ? Center(
                        child: !scrollable
                            ? body
                            : SingleChildScrollView(
                                child: body,
                              ),
                      )
                    : scrollable
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
