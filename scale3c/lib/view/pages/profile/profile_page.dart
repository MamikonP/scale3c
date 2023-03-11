import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/navigation/route_name.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/app_text.dart';
import '../app_page.dart';
import 'profile_content.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          context.canPop()
              ? context.pop()
              : context.pushReplacement(RouteName.root);
        },
        builder: (BuildContext context, AuthState state) {
          return state.maybeWhen(
            signedIn: (User user) => ProfileContent(user),
            orElse: () {
              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
