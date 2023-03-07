import 'package:flutter/material.dart';

import '../../../domain/usecases/email_sigin_firebase/email_signin_firebase.dart';
import '../../../domain/usecases/email_signup_firebase/email_sign_up_firebase.dart';
import '../../../domain/usecases/facebook_sigin_in_firebase/facebook_sigin_firebase.dart';
import '../../../shared/gaps/gaps.dart';
import '../../constants/auth_type.dart';
import '../../constants/image_type.dart';
import '../../constants/input_type.dart';
import '../../mixins/auth_controller_mixin.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/input_field.dart';
import '../../widgets/or_label.dart';
import '../../widgets/spacing.dart';
import 'components/social_buttons.dart';
import 'helpers/auth_helper.dart';

class AuthPageContent extends StatelessWidget with AuthControllerMixin {
  AuthPageContent({
    this.authType = AuthType.sigin,
    this.emailSigninFirebaseUseCase,
    this.emailSignupFirebaseUseCase,
    this.facebookSiginFirebaseUseCase,
    super.key,
  });

  final AuthType authType;
  final EmailSigninFirebaseUseCase? emailSigninFirebaseUseCase;
  final EmailSignupFirebaseUseCase? emailSignupFirebaseUseCase;
  final FacebookSiginFirebaseUseCase? facebookSiginFirebaseUseCase;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: ImageWidget(
            assetImage: AuthHelper.of(authType).authAssetImage,
            imageType: ImageType.png,
          ),
        ),
        Spacing(extraLarge),
        InputField(
          controller: emailController,
          hint: 'Email',
          inputType: FieldInputType.email,
        ),
        Spacing(large),
        InputField(
          controller: passwordController,
          hint: 'Enter Password',
          inputType: FieldInputType.password,
        ),
        Spacing(large),
        if (authType == AuthType.signup)
          InputField(
            controller: confirmPasswordController,
            hint: 'Confirm Password',
            inputType: FieldInputType.password,
          ),
        if (authType == AuthType.sigin)
          const AppText(
            text: 'Forgot your password?',
            textAlign: TextAlign.end,
          ),
        Spacing(extraLarge),
        AppButon(
          onPressed: _authenticateUser,
          child: AppText(
            text: AuthHelper.of(authType).actionText,
          ),
        ),
        const OrLabel(),
        SocialButtons(facebookSiginFirebaseUseCase: facebookSiginFirebaseUseCase,),
      ],
    );
  }

  void _authenticateUser() {
    authType == AuthType.sigin
        ? emailSigninFirebaseUseCase?.call(
            emailController.text, passwordController.text)
        : emailSignupFirebaseUseCase?.call(
            emailController.text, passwordController.text);
  }
}
