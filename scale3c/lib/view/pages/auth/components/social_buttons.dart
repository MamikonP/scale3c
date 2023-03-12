import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/gaps/gaps.dart';
import '../../../../shared/navigation/route_name.dart';
import '../../../bloc/auth/auth_bloc.dart';
import '../../../constants/social_button_type.dart';
import '../../../widgets/image_widget.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

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
                      context
                          .read<AuthBloc>()
                          .add(const FirebaseFacebookSignIn());
                    } else if (type == SocialButtonType.linkedin) {
                      context.push(RouteName.linkedinAuth);
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: small),
                    padding: EdgeInsets.symmetric(
                      vertical: larger,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.outline),
                    ),
                    child: ImageWidget(assetImage: type.assetIcon),
                  ),
                ),
              ),
            )
            .toList());
  }
}
