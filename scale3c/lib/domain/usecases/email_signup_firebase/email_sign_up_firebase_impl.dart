import '../../repositories/auth/firebase_auth_repository.dart';
import 'email_sign_up_firebase.dart';

class EmailSignupFirebaseUseCaseImpl implements EmailSignupFirebaseUseCase {
  EmailSignupFirebaseUseCaseImpl(this.firebaseAuthRepository);

  final IFirebaseAuthRepository firebaseAuthRepository;

  @override
  Future<void> call(String email, String password) async =>
      firebaseAuthRepository.signUpWithEmailPassword(email, password);
}
