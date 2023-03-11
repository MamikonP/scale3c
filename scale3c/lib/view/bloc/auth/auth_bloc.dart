import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../../../domain/usecases/facebook_sigin_in_firebase/facebook_sigin_firebase.dart';
import '../../../domain/usecases/firebase_sign_out/firebase_sign_out.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.emailSigninFirebaseUseCase,
    required this.emailSignupFirebaseUseCase,
    required this.facebookSiginFirebaseUseCase,
    required this.firebaseSignOutUseCase,
  }) : super(const _Initial()) {
    on<Started>(_onStarted);
    on<FirebaseSignInWithEmail>(_onFirebaseSignInWithEmail);
    on<FirebaseSignUpWithEmail>(_onFirebaseSignUpWithEmail);
    on<FirebaseFacebookSignIn>(_onFirebaseFacebookSignIn);
    on<LinkedinSignIn>(_onLinkedinSignIn);
    on<FirebaseSignOut>(_onFirebaseSignOut);
  }

  final EmailSigninFirebaseUseCase emailSigninFirebaseUseCase;
  final EmailSignupFirebaseUseCase emailSignupFirebaseUseCase;
  final FacebookSiginFirebaseUseCase facebookSiginFirebaseUseCase;
  final FirebaseSignOutUseCase firebaseSignOutUseCase;

  void _isLoggedIn(User? user, Emitter<AuthState> emit) {
    if (user != null) {
      emit(_SignedIn(user));
    } else {
      emit(const _Initial());
    }
  }

  void _onStarted(Started event, Emitter<AuthState> emit) {
    final User? user = FirebaseAuth.instance.currentUser;
    _isLoggedIn(user, emit);
  }

  Future<void> _onFirebaseSignInWithEmail(
      FirebaseSignInWithEmail event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    try {
      await emailSigninFirebaseUseCase(event.email, event.password)
          .whenComplete(() {
        _isLoggedIn(FirebaseAuth.instance.currentUser, emit);
      });
    } catch (error) {
      emit(_Error(error.toString()));
    }
  }

  Future<void> _onFirebaseSignUpWithEmail(
      FirebaseSignUpWithEmail event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    try {
      await emailSignupFirebaseUseCase(event.email, event.password)
          .whenComplete(() {
        _isLoggedIn(FirebaseAuth.instance.currentUser, emit);
      });
    } catch (error) {
      emit(_Error(error.toString()));
    }
  }

  Future<void> _onFirebaseFacebookSignIn(
      FirebaseFacebookSignIn event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    await facebookSiginFirebaseUseCase().whenComplete(() {
      _isLoggedIn(FirebaseAuth.instance.currentUser, emit);
    });
  }

  Future<void> _onLinkedinSignIn(
      LinkedinSignIn event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    await facebookSiginFirebaseUseCase();
  }

  Future<void> _onFirebaseSignOut(
      FirebaseSignOut event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    await firebaseSignOutUseCase();
    emit(const _Success());
  }
}
