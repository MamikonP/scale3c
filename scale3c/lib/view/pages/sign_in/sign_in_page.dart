import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/gaps/gaps.dart';
import '../../../shared/navigation/route_name.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/app_text.dart';
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
      scrollable: true,
      bodyPadding: EdgeInsets.symmetric(horizontal: largest),
      footer: AuthFooter(
        text: "Don't have an account?",
        spanText: 'Sign Up',
        callback: () {
          context.push(RouteName.signUp);
        },
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          state.when(
            initial: () {},
            signedIn: (User user) => context.push(RouteName.profile),
            success: () {},
            loading: () => const CircularProgressIndicator(),
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
          return StreamBuilder<User?>(
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
                // context.read<AuthBloc>().add(AuthEvent.started());
              }
              return AuthPageContent();
            },
          );
        },
      ),
    );
  }
}
