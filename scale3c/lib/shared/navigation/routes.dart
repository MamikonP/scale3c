import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../view/pages/profile/profile_page.dart';
import '../../view/pages/sign_in/sign_in_page.dart';
import '../../view/pages/sign_up/sign_up_page.dart';
import '../../view/widgets/linkedin.dart';
import 'route_name.dart';

GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.root,
      builder: (BuildContext context, GoRouterState state) =>
          const SignInPage(),
    ),
    GoRoute(
      path: RouteName.signUp,
      builder: (BuildContext context, GoRouterState state) =>
          const SignUpPage(),
    ),
    GoRoute(
        path: RouteName.linkedinAuth,
        builder: (BuildContext context, GoRouterState state) =>
            const Linkedin()),
    GoRoute(
        path: RouteName.profile,
        builder: (BuildContext context, GoRouterState state) =>
            const ProfilePage()),
  ],
);
