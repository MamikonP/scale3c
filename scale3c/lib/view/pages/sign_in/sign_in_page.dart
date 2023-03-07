import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../../domain/usecases/facebook_sigin_in_firebase/facebook_sigin_firebase.dart';
import '../../../domain/usecases/firebase_sign_out/firebase_sign_out.dart';
import '../../../shared/gaps/gaps.dart';
import '../../../shared/navigation/route_name.dart';
import '../../widgets/profile.dart';
import '../app_page.dart';
import '../auth/auth_page_content.dart';
import '../auth/components/auth_footer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    required this.emailSigninFirebaseUseCase,
    required this.firebaseSignOutUseCase,
    required this.facebookSiginFirebaseUseCase,
    super.key,
  });

  final EmailSigninFirebaseUseCase emailSigninFirebaseUseCase;
  final FirebaseSignOutUseCase firebaseSignOutUseCase;
  final FacebookSiginFirebaseUseCase facebookSiginFirebaseUseCase;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      bodyPadding: EdgeInsets.symmetric(horizontal: largest),
      footer: AuthFooter(
        text: "Don't have an account?",
        spanText: 'Sign Up',
        callback: () {
          context.push(RouteName.signUp);
        },
      ),
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          if (snapshot.hasData) {
            return Profile(
              snapshot.data!,
              firebaseSignOutUseCase: firebaseSignOutUseCase,
            );
          }
          return AuthPageContent(
            emailSigninFirebaseUseCase: emailSigninFirebaseUseCase,
            facebookSiginFirebaseUseCase: facebookSiginFirebaseUseCase,
          );
        },
      ),
    );
  }
}
