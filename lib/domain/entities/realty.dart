import 'package:realestate/core/utils/utils.dart';
import 'package:realestate/domain/entities/latlon.dart';
import 'package:realestate/domain/entities/realty_photo.dart';

class Realty {
  Realty({
    required this.id,
    required this.url,
    required this.address,
    required this.place,
    required this.postcode,
    required this.plotArea,
    required this.residentialArea,
    required this.numOfBath,
    required this.numOfBeds,
    required this.description,
    required this.largePhotos,
    required this.latLon,
    required this.price,
    required this.abbreviation,
    required this.phone,
  });

  final int id;
  final String url;
  final String address;
  final String place;
  final String postcode;
  final String description;
  final int plotArea;
  final int residentialArea;
  final int numOfBath;
  final int numOfBeds;
  final List<LargeRealtyPhoto> largePhotos;
  final LatLon latLon;
  final int price;
  final String abbreviation;
  final String phone;

  String get fullAddress => [postcode, place, address]
      .where((element) => element.isNotEmpty)
      .join(', ');

  String get priceAsCurrency => '${price.toCurrency()} $abbreviation';
}
