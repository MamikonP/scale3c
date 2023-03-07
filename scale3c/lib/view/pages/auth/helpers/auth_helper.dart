import '../../../../shared/constants.dart';
import '../../../constants/auth_type.dart';

class AuthHelper {
  factory AuthHelper() {
    return instance;
  }
  AuthHelper._private();

  factory AuthHelper.of(AuthType authType) {
    return AuthHelper._(authType);
  }

  AuthHelper._(this.authType);
  late final AuthType authType;

  static AuthHelper get instance => AuthHelper._private();


  String get authAssetImage =>
      authType == AuthType.sigin ? signInAssetImage : signUpAssetImage;

  String get actionText => authType == AuthType.sigin ? 'Login' : 'Sign Up';

}
