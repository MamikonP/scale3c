import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../../domain/usecases/facebook_sigin_in_firebase/facebook_sigin_firebase.dart';
import '../../domain/usecases/firebase_sign_out/firebase_sign_out.dart';
import '../../view/pages/sign_in/sign_in_page.dart';
import '../../view/pages/sign_up/sign_up_page.dart';
import '../../view/widgets/linkedin.dart';
import 'route_name.dart';

final GetIt _it = GetIt.instance;

GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.root,
      builder: (BuildContext context, GoRouterState state) => SignInPage(
        emailSigninFirebaseUseCase: _it.get<EmailSigninFirebaseUseCase>(),
        firebaseSignOutUseCase: _it.get<FirebaseSignOutUseCase>(),
        facebookSiginFirebaseUseCase: _it.get<FacebookSiginFirebaseUseCase>(),
      ),
    ),
    GoRoute(
      path: RouteName.signIn,
      builder: (BuildContext context, GoRouterState state) => SignInPage(
        emailSigninFirebaseUseCase: _it.get<EmailSigninFirebaseUseCase>(),
        firebaseSignOutUseCase: _it.get<FirebaseSignOutUseCase>(),
        facebookSiginFirebaseUseCase: _it.get<FacebookSiginFirebaseUseCase>(),
      ),
    ),
    GoRoute(
      path: RouteName.signUp,
      builder: (BuildContext context, GoRouterState state) => SignUpPage(
        emailSignupFirebaseUseCase: _it.get<EmailSignupFirebaseUseCase>(),
      ),
    ),
    GoRoute(
      path: RouteName.linkedinAuth,
      builder: (BuildContext context, GoRouterState state) =>
          const Linkedin()
    )
  ],
);
