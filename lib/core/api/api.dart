import 'package:realestate/core/api/key.dart';

class API {
  static const id = '3ac0adac-8e9a-489e-9d51-4d767c29f4f0';

  static const url =
      'http://partnerapi.funda.nl/feeds/Aanbod.svc/json/detail/${Key.instance}';

  static String objectData(String id) => '$url/koop/$id/';
}
