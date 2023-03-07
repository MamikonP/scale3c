import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthRepository {
  Future<void> signInWithEmailPassword(String email, String password);
  Future<void> signUpWithEmailPassword(String email, String password);
  Future<void> signInWithCredentials(OAuthCredential credential);
  Future<void> signOut();
}
