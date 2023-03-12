import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/constants.dart';
import '../../../shared/gaps/gaps.dart';
import '../../../shared/navigation/route_name.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/app_text.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/image_widget.dart';
import '../app_page.dart';
import '../auth/auth_page_content.dart';
import '../auth/components/auth_footer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppPage(
      appBar: CustomAppBar(
        title: 'Sign In',
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: largest),
            child: const ImageWidget(assetImage: icMenu),
          ),
        ],
      ),
      scrollable: true,
      bodyPadding: EdgeInsets.symmetric(horizontal: largest, vertical: largest),
      footer: AuthFooter(
        text: "Don't have an account?",
        spanText: 'Sign Up',
        callback: () {
          context.push(RouteName.signUp);
        },
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          state.whenOrNull(
            signedIn: (User user) => context.go(RouteName.profile),
            error: (String error) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: AppText(
                  text: error,
                  color: Colors.red,
                ),
              ),
            ),
          );
        },
        builder: (BuildContext context, AuthState state) {
          return AuthPageContent();
        },
      ),
    );
  }
}
