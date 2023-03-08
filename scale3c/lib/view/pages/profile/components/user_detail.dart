import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants.dart';
import '../../../../shared/gaps/gaps.dart';
import '../../../constants/spacing_direction.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/spacing.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({required this.user, super.key});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(
          child: user?.photoURL != null
              ? CircleAvatar(
                  backgroundImage: NetworkImage(user!.photoURL!),
                  radius: 50,
                )
              : Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ExactAssetImage(placeholderImage),
                    ),
                  ),
                ),
        ),
        Spacing(large),
        AppText(
          text: user?.displayName ?? user?.email ?? '',
          color: Theme.of(context).colorScheme.primaryContainer,
          isBold: true,
        ),
        Spacing(large),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppText(
              text: 'New York',
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            Spacing(
              large,
              direction: SpacingDirection.horizontal,
            ),
            AppText(
              text: user?.uid ?? '',
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ],
        ),
      ],
    );
  }
}
