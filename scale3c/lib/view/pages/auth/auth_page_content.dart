import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/constants.dart';
import '../../../shared/gaps/gaps.dart';
import '../../bloc/auth/auth_bloc.dart';
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
    super.key,
  });

  final AuthType authType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ImageWidget(
          assetImage: AuthHelper.of(authType).authAssetImage,
          imageType: ImageType.png,
          height: assetImageHeight,
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
            isBold: true,
          ),
        if (authType == AuthType.sigin) Spacing(extraLarge) else Spacing(large),
        AppButton(
          onPressed: () => _authenticateUser(context),
          child: AppText(
            text: AuthHelper.of(authType).actionText,
          ),
        ),
        Spacing(large),
        const OrLabel(),
        Spacing(large),
        const SocialButtons(),
      ],
    );
  }

  void _authenticateUser(BuildContext context) {
    authType == AuthType.sigin
        ? context.read<AuthBloc>().add(AuthEvent.firebaseSignInWithEmail(
            emailController.text, passwordController.text))
        : context.read<AuthBloc>().add(AuthEvent.firebaseSignUpWithEmail(
            emailController.text, passwordController.text));
  }
}
