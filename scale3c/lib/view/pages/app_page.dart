import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({required this.body, super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }
}
