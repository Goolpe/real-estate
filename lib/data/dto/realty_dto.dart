import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realestate/data/dto/media_dto.dart';
import 'package:realestate/data/dto/price_dto.dart';

part 'realty_dto.freezed.dart';
part 'realty_dto.g.dart';

@freezed
class RealtyDTO with _$RealtyDTO {
  const factory RealtyDTO({
    required int id,
    @JsonKey(name: 'URL', defaultValue: '') required String url,
    @JsonKey(name: 'Adres', defaultValue: '') required String address,
    @JsonKey(name: 'Prijs') required PriceDTO price,
    @JsonKey(name: 'Plaats', defaultValue: '') required String place,
    @JsonKey(defaultValue: '') required String postcode,
    @JsonKey(defaultValue: []) required List<MediaDTO> media,
    @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
        required String description,
    @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0) required int plotArea,
    @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
        required int residentialArea,
    @JsonKey(name: 'AantalBadkamers', defaultValue: 0) required int numOfBath,
    @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0) required int numOfBeds,
    @JsonKey(name: 'WGS84_Y', defaultValue: 0) required double lat,
    @JsonKey(name: 'WGS84_X', defaultValue: 0) required double lon,
    @JsonKey(name: 'MakelaarTelefoon', defaultValue: '') required String phone,
  }) = _RealtyDTO;

  factory RealtyDTO.fromJson(Map<String, dynamic> json) =>
      _$RealtyDTOFromJson(json);
}
