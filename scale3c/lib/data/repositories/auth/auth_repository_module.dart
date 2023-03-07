import 'package:get_it/get_it.dart';

import '../../../domain/repositories/auth/firebase_auth_repository.dart';
import 'firebase_auth_repository_impl.dart';

void authRepositoryModule =
    GetIt.instance.registerFactory<IFirebaseAuthRepository>(
  () => FirebaseAuthRepositoryImpl(),
);
