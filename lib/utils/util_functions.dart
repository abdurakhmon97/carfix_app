import 'package:url_launcher/url_launcher.dart';

void carfixLaunchUrl(
  String url, [
  LaunchMode mode = LaunchMode.platformDefault,
]) async {
  try {
    launchUrl(Uri.parse(url), mode: mode);
  } on Object catch (_) {}
}
