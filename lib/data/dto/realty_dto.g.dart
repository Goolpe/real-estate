// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realty_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RealtyDTO _$$_RealtyDTOFromJson(Map<String, dynamic> json) => _$_RealtyDTO(
      id: json['Id'] as int,
      url: json['URL'] as String? ?? '',
      address: json['Adres'] as String? ?? '',
      price: PriceDTO.fromJson(json['Prijs'] as Map<String, dynamic>),
      place: json['Plaats'] as String? ?? '',
      postcode: json['Postcode'] as String? ?? '',
      media: (json['Media'] as List<dynamic>?)
              ?.map((e) => MediaDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['VolledigeOmschrijving'] as String? ?? '',
      plotArea: json['PerceelOppervlakte'] as int? ?? 0,
      residentialArea: json['WoonOppervlakte'] as int? ?? 0,
      numOfBath: json['AantalBadkamers'] as int? ?? 0,
      numOfBeds: json['AantalSlaapkamers'] as int? ?? 0,
      lat: (json['WGS84_Y'] as num?)?.toDouble() ?? 0,
      lon: (json['WGS84_X'] as num?)?.toDouble() ?? 0,
      phone: json['MakelaarTelefoon'] as String? ?? '',
    );
