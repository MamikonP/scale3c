abstract class IFirebaseAuthRepository {
  Future<void> signInWithEmailPassword(String email, String password);
  Future<void> signOut();
}