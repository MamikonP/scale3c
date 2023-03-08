import 'package:flutter/material.dart';
import 'shared/navigation/routes.dart';
import 'shared/styles/color_scheme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomThemeData().lightTheme,
      routerConfig: router,
    );
  }
}
