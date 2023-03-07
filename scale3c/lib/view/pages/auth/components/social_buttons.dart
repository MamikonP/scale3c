import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/usecases/facebook_sigin_in_firebase/facebook_sigin_firebase.dart';
import '../../../../shared/gaps/gaps.dart';
import '../../../../shared/navigation/route_name.dart';
import '../../../constants/social_button_type.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    required this.facebookSiginFirebaseUseCase,
    super.key,
  });

  final FacebookSiginFirebaseUseCase? facebookSiginFirebaseUseCase;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: SocialButtonType.values
            .map(
              (SocialButtonType type) => Expanded(
                child: InkWell(
                  onTap: () {
                    if (type == SocialButtonType.facebook) {
                      facebookSiginFirebaseUseCase?.call();
                    } else if (type == SocialButtonType.linkedin) {
                      context.push(RouteName.linkedinAuth);
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: small),
                    padding: EdgeInsets.symmetric(
                      vertical: medium,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.outline),
                    ),
                    child: Icon(type.iconData),
                  ),
                ),
              ),
            )
            .toList());
  }
}
