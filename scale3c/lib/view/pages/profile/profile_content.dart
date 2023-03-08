import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../shared/gaps/gaps.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                      onPressed: () {},
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
        Spacing(
          extraLarge,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          color: Theme.of(context).colorScheme.onBackground,
          child: Column(
            children: <Widget>[
              UserSocialDetail(
                title: 'Phone Number',
                subtitle: user?.phoneNumber ?? 'Not specified',
                iconData: Icons.phone,
              ),
              UserSocialDetail(
                title: 'Email',
                subtitle: user?.email ?? 'Unknown',
                iconData: Icons.email,
              ),
              const UserSocialDetail(
                title: 'Completed Projects',
                subtitle: '248',
                iconData: Icons.donut_large,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
