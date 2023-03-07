import '../../repositories/auth/firebase_auth_repository.dart';

import 'email_signin_firebase.dart';

class EmailSigninFirebaseUseCaseImpl implements EmailSigninFirebaseUseCase {
  EmailSigninFirebaseUseCaseImpl(this.firebaseAuthRepository);

  final IFirebaseAuthRepository firebaseAuthRepository;

  @override
  Future<void> call(String email, String password) async {
    await firebaseAuthRepository.signInWithEmailPassword(email, password);
  }
}
