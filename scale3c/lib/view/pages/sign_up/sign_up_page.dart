import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/gaps/gaps.dart';
import '../../constants/auth_type.dart';
import '../app_page.dart';
import '../auth/auth_page_content.dart';
import '../auth/components/auth_footer.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppPage(
      bodyPadding: EdgeInsets.symmetric(horizontal: largest),
      scrollable: true,
      footer: AuthFooter(
        text: 'Already have an account?',
        spanText: 'Sign In',
        callback: () {
          context.pop();
        },
      ),
      body: AuthPageContent(
        authType: AuthType.signup,
      ),
    );
  }
}
