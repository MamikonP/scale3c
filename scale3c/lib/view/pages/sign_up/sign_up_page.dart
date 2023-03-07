import 'package:flutter/material.dart';

import '../../../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../app_page.dart';
import 'sign_up_content.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    required this.emailSignupFirebaseUseCase,
    super.key,
  });

  final EmailSignupFirebaseUseCase emailSignupFirebaseUseCase;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: SignUpContent(
        emailSignupFirebaseUseCase: emailSignupFirebaseUseCase,
      ),
    );
  }
}
