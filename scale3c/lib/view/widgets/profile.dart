import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../domain/usecases/firebase_sign_out/firebase_sign_out.dart';

class Profile extends StatelessWidget {
  const Profile(
    this.user, {
    required this.firebaseSignOutUseCase,
    super.key,
  });

  final User user;
  final FirebaseSignOutUseCase firebaseSignOutUseCase;

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
        ElevatedButton(
          onPressed: firebaseSignOutUseCase,
          child: const Text('Sign out'),
        )
      ],
    );
  }
}
