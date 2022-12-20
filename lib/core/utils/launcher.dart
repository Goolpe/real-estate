import 'package:url_launcher/url_launcher.dart';

void launchPhone(String phoneNumber) {
  final uri = Uri.parse('tel:${phoneNumber.replaceAll('-', '')}');
  launchUrl(uri);
}
