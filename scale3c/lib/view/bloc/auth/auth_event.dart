part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = Started;
  const factory AuthEvent.firebaseSignInWithEmail(
      String email, String password) = FirebaseSignInWithEmail;
  const factory AuthEvent.firebaseSignUpWithEmail(
      String email, String password) = FirebaseSignUpWithEmail;
  const factory AuthEvent.firebaseFacebookSignIn()  = FirebaseFacebookSignIn;
  const factory AuthEvent.linkedinSignIn()  = LinkedinSignIn;
  const factory AuthEvent.firebaseSignOut()  = FirebaseSignOut;
}
