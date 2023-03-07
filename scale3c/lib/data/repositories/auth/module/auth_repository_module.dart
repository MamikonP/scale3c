import 'package:get_it/get_it.dart';

import '../../../../domain/repositories/auth/facebook_auth_repository.dart';
import '../../../../domain/repositories/auth/firebase_auth_repository.dart';
import '../facebook_auth_repository_impl.dart';
import '../firebase_auth_repository_impl.dart';

final GetIt _it = GetIt.instance;

List<void> authRepositoryModules = <void>[
  _it.registerFactory<IFirebaseAuthRepository>(
    () => FirebaseAuthRepositoryImpl(),
  ),
  _it.registerFactory<IFacebookAuthRepostory>(
    () => FacebookAuthRepostoryImpl(),
  )
];
