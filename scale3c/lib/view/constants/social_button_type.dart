import '../../shared/constants.dart';

enum SocialButtonType {
  facebook(icFacebook),
  twitter(icTwitter),
  linkedin(icLinkedin);

  const SocialButtonType(this.assetIcon);

  final String assetIcon;
}
