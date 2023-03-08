import 'package:url_launcher/url_launcher.dart';

import '../extension/map_extension.dart';
import '../shared/constants.dart';

class LaunchUrlService {
  Future<bool> sendEmail() async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: supportEmail,
      queryParameters: <String, dynamic>{
        'subject': 'Feedback',
      }.encodeQueryParameters(),
    );
    if (await canLaunchUrl(uri)) {
      return launchUrl(uri);
    }
    return false;
  }

  Future<bool> call() async {
    final Uri uri = Uri(
      scheme: 'tel',
      path: supportEmail,
    );
    if (await canLaunchUrl(uri)) {
      return launchUrl(uri);
    }
    return false;
  }
}
