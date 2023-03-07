import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../../domain/usecases/facebook_sigin_in_firebase/facebook_sigin_firebase.dart';
import '../../../domain/usecases/firebase_sign_out/firebase_sign_out.dart';
import '../../widgets/profile.dart';
import '../app_page.dart';
import 'sign_in_content.dart';

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
          return SignInContent(
            emailSigninFirebaseUseCase: emailSigninFirebaseUseCase,
            facebookSiginFirebaseUseCase: facebookSiginFirebaseUseCase,
          );
        },
      ),
    );
  }
}
