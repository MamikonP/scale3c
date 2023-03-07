import 'package:flutter/material.dart';

import '../../../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../../mixins/auth_controller_mixin.dart';

class SignUpContent extends StatelessWidget with AuthControllerMixin {
  SignUpContent({required this.emailSignupFirebaseUseCase, super.key});

  final EmailSignupFirebaseUseCase emailSignupFirebaseUseCase;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: emailController,
          decoration: const InputDecoration(hintText: 'Email'),
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(hintText: 'Password'),
        ),
        ElevatedButton(
          onPressed: _firebaseSignUp,
          child: const Text('Sign In'),
        ),
      ],
    );
  }

  void _firebaseSignUp() {
    emailSignupFirebaseUseCase(emailController.text, passwordController.text);
  }
}
