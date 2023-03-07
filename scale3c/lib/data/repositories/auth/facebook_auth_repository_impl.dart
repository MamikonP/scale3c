import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import '../../../domain/repositories/auth/facebook_auth_repository.dart';

class FacebookAuthRepostoryImpl implements IFacebookAuthRepostory {
  @override
  Future<OAuthCredential?>? signIn() async {
    final LoginResult result = await FacebookAuth.instance.login();
    return result.accessToken != null
        ? FacebookAuthProvider.credential(result.accessToken!.token)
        : null;
  }

  @override
  Future<void> signOut() async {
    await FacebookAuth.instance.logOut();
  }
}
