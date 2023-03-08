import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../services/launch_url_service.dart';
import '../../../shared/constants.dart';
import '../../../shared/gaps/gaps.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../constants/spacing_direction.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/spacing.dart';
import 'components/user_detail.dart';
import 'components/user_social_detail.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent(this.user, {super.key});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        state.whenOrNull(
          success: () => context.pop(),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacing(extraLarge),
                UserDetail(user: user),
                Spacing(large),
                GestureDetector(
                  child: AppText(
                    text: 'Edit',
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    textDecoration: TextDecoration.underline,
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacing(large),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: AppButton(
                        onPressed: () {},
                        outlined: true,
                        child: AppText(
                          text: 'About Me',
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ),
                    Spacing(
                      large,
                      direction: SpacingDirection.horizontal,
                    ),
                    Expanded(
                      child: AppButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(const FirebaseSignOut());
                        },
                        child: const AppText(
                          text: 'Logout',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            color: Theme.of(context).colorScheme.onBackground,
            child: Column(
              children: <Widget>[
                UserSocialDetail(
                  title: 'Phone Number',
                  subtitle: user?.phoneNumber ?? 'Not specified',
                  assetIcon: icPhone,
                  callback: () async => LaunchUrlService().call(),
                ),
                UserSocialDetail(
                  title: 'Email',
                  subtitle: user?.email ?? 'Unknown',
                  assetIcon: icMail,
                  callback: () async => LaunchUrlService().sendEmail(),
                ),
                const UserSocialDetail(
                  title: 'Completed Projects',
                  subtitle: '248',
                  assetIcon: icDot,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
