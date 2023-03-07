import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile(this.user, {super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (user.photoURL != null)
          CircleAvatar(
            backgroundImage: NetworkImage(
              user.photoURL!,
            ),
          ),
        Text(user.email ?? ''),
        Text(user.displayName ?? ''),
        const Text('Logged In'),
      ],
    );
  }
}
