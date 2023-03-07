import 'package:flutter/material.dart';

import '../../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';

// Mock auth page
class SignInContent extends StatelessWidget {
  SignInContent({
    required this.emailSigninFirebaseUseCase,
    super.key,
  });

  final EmailSigninFirebaseUseCase emailSigninFirebaseUseCase;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(hintText: 'Email'),
        ),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(hintText: 'Password'),
        ),
        ElevatedButton(
          onPressed: _firebaseSignIn,
          child: const Text('Sign In'),
        ),
      ],
    );
  }

  void _firebaseSignIn() => emailSigninFirebaseUseCase(_emailController.text, _passwordController.text);
}
