
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../../domain/usecases/facebook_sigin_in_firebase/facebook_sigin_firebase.dart';
import '../../domain/usecases/firebase_sign_out/firebase_sign_out.dart';
import '../bloc/auth/auth_bloc.dart';

final GetIt _it = GetIt.instance;

final List<BlocProvider<dynamic>> authProvider = <BlocProvider<dynamic>>[
  BlocProvider<AuthBloc>(
    create: (BuildContext context) => AuthBloc(
      emailSigninFirebaseUseCase: _it.get<EmailSigninFirebaseUseCase>(),
      emailSignupFirebaseUseCase: _it.get<EmailSignupFirebaseUseCase>(),
      facebookSiginFirebaseUseCase: _it.get<FacebookSiginFirebaseUseCase>(),
      firebaseSignOutUseCase: _it.get<FirebaseSignOutUseCase>(),
    )..add(const Started()),
  )
];
