import '../../repositories/auth/firebase_auth_repository.dart';
import 'firebase_sign_out.dart';

class FirebaseSignOutUseCaseImpl implements FirebaseSignOutUseCase {
  FirebaseSignOutUseCaseImpl(this.firebaseAuthRepository);

  final IFirebaseAuthRepository firebaseAuthRepository;
  @override
  Future<void> call() async => firebaseAuthRepository.signOut();
}
