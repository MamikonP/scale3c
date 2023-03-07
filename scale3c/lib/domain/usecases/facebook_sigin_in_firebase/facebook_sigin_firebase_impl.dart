import 'package:firebase_auth/firebase_auth.dart';

import '../../repositories/auth/facebook_auth_repository.dart';
import '../../repositories/auth/firebase_auth_repository.dart';
import 'facebook_sigin_firebase.dart';

class FacebookSiginFirebaseUseCaseImpl implements FacebookSiginFirebaseUseCase {
  FacebookSiginFirebaseUseCaseImpl(
      this.facebookAuthRepostory, this.firebaseAuthRepository);

  final IFacebookAuthRepostory facebookAuthRepostory;
  final IFirebaseAuthRepository firebaseAuthRepository;

  @override
  Future<void> call() async {
    final OAuthCredential? credential = await facebookAuthRepostory.signIn();
    if (credential == null) {
      throw Exception('Wrong Credentials');
    }
    await firebaseAuthRepository.signInWithCredentials(credential);
  }
}
