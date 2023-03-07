import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../widgets/profile.dart';
import 'sign_in_content.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({required this.emailSigninFirebaseUseCase, super.key});

  final EmailSigninFirebaseUseCase emailSigninFirebaseUseCase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            return Profile(snapshot.data!);
          }
          return SignInContent(
            emailSigninFirebaseUseCase: emailSigninFirebaseUseCase,
          );
        },
      ),
    );
  }
}
