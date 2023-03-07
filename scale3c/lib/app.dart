import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import 'domain/usecases/firebase_sign_out/firebase_sign_out.dart';
import 'view/pages/sign_in/sign_in_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(
        emailSigninFirebaseUseCase:
            GetIt.instance.get<EmailSigninFirebaseUseCase>(),
        firebaseSignOutUseCase: GetIt.instance.get<FirebaseSignOutUseCase>(),
      ),
    );
  }
}
