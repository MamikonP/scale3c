import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'shared/navigation/routes.dart';
import 'shared/styles/color_scheme.dart';
import 'view/providers/auth_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: authProvider,// <BlocProvider<dynamic>>[...authProvider],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Scale3c',
        theme: CustomThemeData().lightTheme,
        routerConfig: router,
      ),
    );
  }
}
