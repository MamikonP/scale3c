import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../shared/gaps/gaps.dart';
import '../app_page.dart';
import 'profile_content.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(this.user, {super.key});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      centered: true,
      body: ProfileContent(user),
    );
  }
}
