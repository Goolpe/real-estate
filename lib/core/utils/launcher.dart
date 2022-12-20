import 'package:url_launcher/url_launcher.dart';

Future<bool> launchPhone(String phoneNumber) async {
  final uri = Uri.parse('tel:${phoneNumber.replaceAll('-', '')}');
  final canLaunch = await canLaunchUrl(uri);
  if (canLaunch) {
    launchUrl(uri);
    return true;
  }
  return false;
}
