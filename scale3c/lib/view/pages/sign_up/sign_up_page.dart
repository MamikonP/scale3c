import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../../../shared/gaps/gaps.dart';
import '../../constants/auth_type.dart';
import '../app_page.dart';
import '../auth/auth_page_content.dart';
import '../auth/components/auth_footer.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    required this.emailSignupFirebaseUseCase,
    super.key,
  });

  final EmailSignupFirebaseUseCase emailSignupFirebaseUseCase;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      bodyPadding: EdgeInsets.symmetric(horizontal: largest),
      footer: AuthFooter(
        text: 'Already have an account?',
        spanText: 'Sign In',
        callback: () {
          context.pop();
        },
      ),
      body: AuthPageContent(
        authType: AuthType.signup,
        emailSignupFirebaseUseCase: emailSignupFirebaseUseCase,
      ),
    );
  }
}
