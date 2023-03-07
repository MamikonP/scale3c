import 'package:firebase_auth/firebase_auth.dart';

abstract class IFacebookAuthRepostory {
  Future<OAuthCredential?>? signIn();
  Future<void> signOut();
}
