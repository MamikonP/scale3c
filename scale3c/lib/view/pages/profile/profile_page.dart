import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../app_page.dart';
import 'profile_content.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      centered: false,
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) {
          return state.maybeWhen(
            signedIn: (User user) => ProfileContent(user),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
