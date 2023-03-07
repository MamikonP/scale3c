import 'package:get_it/get_it.dart';
import '../domain/repositories/auth/firebase_auth_repository.dart';
import '../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../domain/usecases/email_sigin_firebase/email_signin_firebase_impl.dart';

final GetIt _get = GetIt.instance;

List<void> domainModules = <void>[
  _get.registerFactory<EmailSigninFirebaseUseCase>(
      () => EmailSigninFirebaseUseCaseImpl(
            _get.get<IFirebaseAuthRepository>(),
          )),
];
