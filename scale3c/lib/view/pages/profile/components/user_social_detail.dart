import 'package:flutter/material.dart';

import '../../../../shared/gaps/gaps.dart';
import '../../../constants/spacing_direction.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/image_widget.dart';
import '../../../widgets/spacing.dart';

class UserSocialDetail extends StatelessWidget {
  const UserSocialDetail({
    required this.title,
    required this.subtitle,
    required this.assetIcon,
    this.callback,
    super.key,
  });

  final String title;
  final String subtitle;
  final String assetIcon;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        margin: EdgeInsets.all(large),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 0.5),
        ),
        child: Padding(
          padding: EdgeInsets.all(large),
          child: Row(
            children: <Widget>[
              ImageWidget(assetImage: assetIcon),
              Spacing(
                large,
                direction: SpacingDirection.horizontal,
              ),
              AppText(
                text: '|',
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              Spacing(
                large,
                direction: SpacingDirection.horizontal,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppText(
                    text: title,
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  AppText(
                    text: subtitle.isEmpty ? 'Not specified' : subtitle,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
