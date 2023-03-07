import 'package:get_it/get_it.dart';

import '../domain/repositories/auth/firebase_auth_repository.dart';
import '../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../domain/usecases/email_sigin_firebase/email_signin_firebase_impl.dart';
import '../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../domain/usecases/email_signup_firebase/email_sign_up_firebase_impl.dart';
import '../domain/usecases/firebase_sign_out/firebase_sign_out.dart';
import '../domain/usecases/firebase_sign_out/firebase_sign_out_impl.dart';

final GetIt _get = GetIt.instance;

List<void> domainModules = <void>[
  _get.registerFactory<EmailSigninFirebaseUseCase>(() =>
      EmailSigninFirebaseUseCaseImpl(_get.get<IFirebaseAuthRepository>())),
  _get.registerFactory<EmailSignupFirebaseUseCase>(() =>
      EmailSignupFirebaseUseCaseImpl(_get.get<IFirebaseAuthRepository>())),
  _get.registerFactory<FirebaseSignOutUseCase>(
      () => FirebaseSignOutUseCaseImpl(_get.get<IFirebaseAuthRepository>())),
];
