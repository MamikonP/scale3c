import 'package:firebase_auth/firebase_auth.dart';

import '../../../domain/repositories/auth/firebase_auth_repository.dart';

class FirebaseAuthRepositoryImpl implements IFirebaseAuthRepository {
  @override
  Future<void> signInWithEmailPassword(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
