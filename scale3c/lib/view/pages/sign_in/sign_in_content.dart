import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../../shared/navigation/route_name.dart';
import '../../mixins/auth_controller_mixin.dart';

// Mock auth page
class SignInContent extends StatelessWidget with AuthControllerMixin {
  SignInContent({
    required this.emailSigninFirebaseUseCase,
    super.key,
  });

  final EmailSigninFirebaseUseCase emailSigninFirebaseUseCase;

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
          onPressed: _firebaseSignIn,
          child: const Text('Sign In'),
        ),
        TextButton(
          onPressed: () {
            context.push(RouteName.signUp);
          },
          child: const Text('Sign Up'),
        )
      ],
    );
  }

  void _firebaseSignIn() =>
      emailSigninFirebaseUseCase(emailController.text, passwordController.text);
}
