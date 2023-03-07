import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:linkedin_login/linkedin_login.dart';

import '../../shared/constants.dart';

class Linkedin extends StatelessWidget {
  const Linkedin({super.key});

  @override
  Widget build(BuildContext context) {
    return LinkedInUserWidget(
      clientId: linkedinClientId,
      clientSecret: linkedinClientSecret,
      onGetUserProfile: (UserSucceededAction value) {
        context.pop();
      },
      redirectUrl: linkedinRedirectUri,
      projection: const <String>[
        ProjectionParameters.firstName,
        ProjectionParameters.lastName,
        ProjectionParameters.localizedFirstName,
        ProjectionParameters.localizedLastName,
        ProjectionParameters.profilePicture,
        ProjectionParameters.id,
      ],
    );
  }
}
