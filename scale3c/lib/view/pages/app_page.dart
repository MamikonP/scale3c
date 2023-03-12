import 'package:flutter/material.dart';


class AppPage extends StatelessWidget {
  const AppPage({
    required this.body,
    this.scrollable = false,
    this.footer,
    this.header,
    this.bodyPadding,
    this.appBar,
    super.key,
  });

  final Widget body;
  final Widget? footer;
  final Widget? header;
  final bool scrollable;
  final EdgeInsets? bodyPadding;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        minimum: bodyPadding ?? EdgeInsets.zero,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverFillRemaining(
              hasScrollBody: false,
              child: _body,
            ),
          ],
        ),
      ),
    );
  }

  Widget get _body {
    return Column(
      children: <Widget>[
        if (header != null) header!,
        Expanded(child: body),
        if (footer != null) footer!,
      ],
    );
  }
}
