// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realty_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RealtyDTO _$RealtyDTOFromJson(Map<String, dynamic> json) {
  return _RealtyDTO.fromJson(json);
}

/// @nodoc
mixin _$RealtyDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'URL', defaultValue: '')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'Adres', defaultValue: '')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'Prijs')
  PriceDTO get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'Plaats', defaultValue: '')
  String get place => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get postcode => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<MediaDTO> get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0)
  int get plotArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
  int get residentialArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'AantalBadkamers', defaultValue: 0)
  int get numOfBath => throw _privateConstructorUsedError;
  @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0)
  int get numOfBeds => throw _privateConstructorUsedError;
  @JsonKey(name: 'WGS84_Y', defaultValue: 0)
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'WGS84_X', defaultValue: 0)
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'MakelaarTelefoon', defaultValue: '')
  String get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RealtyDTOCopyWith<RealtyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtyDTOCopyWith<$Res> {
  factory $RealtyDTOCopyWith(RealtyDTO value, $Res Function(RealtyDTO) then) =
      _$RealtyDTOCopyWithImpl<$Res, RealtyDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'URL', defaultValue: '')
          String url,
      @JsonKey(name: 'Adres', defaultValue: '')
          String address,
      @JsonKey(name: 'Prijs')
          PriceDTO price,
      @JsonKey(name: 'Plaats', defaultValue: '')
          String place,
      @JsonKey(defaultValue: '')
          String postcode,
      @JsonKey(defaultValue: [])
          List<MediaDTO> media,
      @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
          String description,
      @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0)
          int plotArea,
      @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
          int residentialArea,
      @JsonKey(name: 'AantalBadkamers', defaultValue: 0)
          int numOfBath,
      @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0)
          int numOfBeds,
      @JsonKey(name: 'WGS84_Y', defaultValue: 0)
          double lat,
      @JsonKey(name: 'WGS84_X', defaultValue: 0)
          double lon,
      @JsonKey(name: 'MakelaarTelefoon', defaultValue: '')
          String phone});

  $PriceDTOCopyWith<$Res> get price;
}

/// @nodoc
class _$RealtyDTOCopyWithImpl<$Res, $Val extends RealtyDTO>
    implements $RealtyDTOCopyWith<$Res> {
  _$RealtyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? address = null,
    Object? price = null,
    Object? place = null,
    Object? postcode = null,
    Object? media = null,
    Object? description = null,
    Object? plotArea = null,
    Object? residentialArea = null,
    Object? numOfBath = null,
    Object? numOfBeds = null,
    Object? lat = null,
    Object? lon = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDTO,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      plotArea: null == plotArea
          ? _value.plotArea
          : plotArea // ignore: cast_nullable_to_non_nullable
              as int,
      residentialArea: null == residentialArea
          ? _value.residentialArea
          : residentialArea // ignore: cast_nullable_to_non_nullable
              as int,
      numOfBath: null == numOfBath
          ? _value.numOfBath
          : numOfBath // ignore: cast_nullable_to_non_nullable
              as int,
      numOfBeds: null == numOfBeds
          ? _value.numOfBeds
          : numOfBeds // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceDTOCopyWith<$Res> get price {
    return $PriceDTOCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RealtyDTOCopyWith<$Res> implements $RealtyDTOCopyWith<$Res> {
  factory _$$_RealtyDTOCopyWith(
          _$_RealtyDTO value, $Res Function(_$_RealtyDTO) then) =
      __$$_RealtyDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'URL', defaultValue: '')
          String url,
      @JsonKey(name: 'Adres', defaultValue: '')
          String address,
      @JsonKey(name: 'Prijs')
          PriceDTO price,
      @JsonKey(name: 'Plaats', defaultValue: '')
          String place,
      @JsonKey(defaultValue: '')
          String postcode,
      @JsonKey(defaultValue: [])
          List<MediaDTO> media,
      @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
          String description,
      @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0)
          int plotArea,
      @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
          int residentialArea,
      @JsonKey(name: 'AantalBadkamers', defaultValue: 0)
          int numOfBath,
      @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0)
          int numOfBeds,
      @JsonKey(name: 'WGS84_Y', defaultValue: 0)
          double lat,
      @JsonKey(name: 'WGS84_X', defaultValue: 0)
          double lon,
      @JsonKey(name: 'MakelaarTelefoon', defaultValue: '')
          String phone});

  @override
  $PriceDTOCopyWith<$Res> get price;
}

/// @nodoc
class __$$_RealtyDTOCopyWithImpl<$Res>
    extends _$RealtyDTOCopyWithImpl<$Res, _$_RealtyDTO>
    implements _$$_RealtyDTOCopyWith<$Res> {
  __$$_RealtyDTOCopyWithImpl(
      _$_RealtyDTO _value, $Res Function(_$_RealtyDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? address = null,
    Object? price = null,
    Object? place = null,
    Object? postcode = null,
    Object? media = null,
    Object? description = null,
    Object? plotArea = null,
    Object? residentialArea = null,
    Object? numOfBath = null,
    Object? numOfBeds = null,
    Object? lat = null,
    Object? lon = null,
    Object? phone = null,
  }) {
    return _then(_$_RealtyDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDTO,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      plotArea: null == plotArea
          ? _value.plotArea
          : plotArea // ignore: cast_nullable_to_non_nullable
              as int,
      residentialArea: null == residentialArea
          ? _value.residentialArea
          : residentialArea // ignore: cast_nullable_to_non_nullable
              as int,
      numOfBath: null == numOfBath
          ? _value.numOfBath
          : numOfBath // ignore: cast_nullable_to_non_nullable
              as int,
      numOfBeds: null == numOfBeds
          ? _value.numOfBeds
          : numOfBeds // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RealtyDTO implements _RealtyDTO {
  const _$_RealtyDTO(
      {required this.id,
      @JsonKey(name: 'URL', defaultValue: '')
          required this.url,
      @JsonKey(name: 'Adres', defaultValue: '')
          required this.address,
      @JsonKey(name: 'Prijs')
          required this.price,
      @JsonKey(name: 'Plaats', defaultValue: '')
          required this.place,
      @JsonKey(defaultValue: '')
          required this.postcode,
      @JsonKey(defaultValue: [])
          required final List<MediaDTO> media,
      @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
          required this.description,
      @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0)
          required this.plotArea,
      @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
          required this.residentialArea,
      @JsonKey(name: 'AantalBadkamers', defaultValue: 0)
          required this.numOfBath,
      @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0)
          required this.numOfBeds,
      @JsonKey(name: 'WGS84_Y', defaultValue: 0)
          required this.lat,
      @JsonKey(name: 'WGS84_X', defaultValue: 0)
          required this.lon,
      @JsonKey(name: 'MakelaarTelefoon', defaultValue: '')
          required this.phone})
      : _media = media;

  factory _$_RealtyDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RealtyDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'URL', defaultValue: '')
  final String url;
  @override
  @JsonKey(name: 'Adres', defaultValue: '')
  final String address;
  @override
  @JsonKey(name: 'Prijs')
  final PriceDTO price;
  @override
  @JsonKey(name: 'Plaats', defaultValue: '')
  final String place;
  @override
  @JsonKey(defaultValue: '')
  final String postcode;
  final List<MediaDTO> _media;
  @override
  @JsonKey(defaultValue: [])
  List<MediaDTO> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
  final String description;
  @override
  @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0)
  final int plotArea;
  @override
  @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
  final int residentialArea;
  @override
  @JsonKey(name: 'AantalBadkamers', defaultValue: 0)
  final int numOfBath;
  @override
  @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0)
  final int numOfBeds;
  @override
  @JsonKey(name: 'WGS84_Y', defaultValue: 0)
  final double lat;
  @override
  @JsonKey(name: 'WGS84_X', defaultValue: 0)
  final double lon;
  @override
  @JsonKey(name: 'MakelaarTelefoon', defaultValue: '')
  final String phone;

  @override
  String toString() {
    return 'RealtyDTO(id: $id, url: $url, address: $address, price: $price, place: $place, postcode: $postcode, media: $media, description: $description, plotArea: $plotArea, residentialArea: $residentialArea, numOfBath: $numOfBath, numOfBeds: $numOfBeds, lat: $lat, lon: $lon, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RealtyDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.plotArea, plotArea) ||
                other.plotArea == plotArea) &&
            (identical(other.residentialArea, residentialArea) ||
                other.residentialArea == residentialArea) &&
            (identical(other.numOfBath, numOfBath) ||
                other.numOfBath == numOfBath) &&
            (identical(other.numOfBeds, numOfBeds) ||
                other.numOfBeds == numOfBeds) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      address,
      price,
      place,
      postcode,
      const DeepCollectionEquality().hash(_media),
      description,
      plotArea,
      residentialArea,
      numOfBath,
      numOfBeds,
      lat,
      lon,
      phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RealtyDTOCopyWith<_$_RealtyDTO> get copyWith =>
      __$$_RealtyDTOCopyWithImpl<_$_RealtyDTO>(this, _$identity);
}

abstract class _RealtyDTO implements RealtyDTO {
  const factory _RealtyDTO(
      {required final int id,
      @JsonKey(name: 'URL', defaultValue: '')
          required final String url,
      @JsonKey(name: 'Adres', defaultValue: '')
          required final String address,
      @JsonKey(name: 'Prijs')
          required final PriceDTO price,
      @JsonKey(name: 'Plaats', defaultValue: '')
          required final String place,
      @JsonKey(defaultValue: '')
          required final String postcode,
      @JsonKey(defaultValue: [])
          required final List<MediaDTO> media,
      @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
          required final String description,
      @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0)
          required final int plotArea,
      @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
          required final int residentialArea,
      @JsonKey(name: 'AantalBadkamers', defaultValue: 0)
          required final int numOfBath,
      @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0)
          required final int numOfBeds,
      @JsonKey(name: 'WGS84_Y', defaultValue: 0)
          required final double lat,
      @JsonKey(name: 'WGS84_X', defaultValue: 0)
          required final double lon,
      @JsonKey(name: 'MakelaarTelefoon', defaultValue: '')
          required final String phone}) = _$_RealtyDTO;

  factory _RealtyDTO.fromJson(Map<String, dynamic> json) =
      _$_RealtyDTO.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'URL', defaultValue: '')
  String get url;
  @override
  @JsonKey(name: 'Adres', defaultValue: '')
  String get address;
  @override
  @JsonKey(name: 'Prijs')
  PriceDTO get price;
  @override
  @JsonKey(name: 'Plaats', defaultValue: '')
  String get place;
  @override
  @JsonKey(defaultValue: '')
  String get postcode;
  @override
  @JsonKey(defaultValue: [])
  List<MediaDTO> get media;
  @override
  @JsonKey(name: 'VolledigeOmschrijving', defaultValue: '')
  String get description;
  @override
  @JsonKey(name: 'PerceelOppervlakte', defaultValue: 0)
  int get plotArea;
  @override
  @JsonKey(name: 'WoonOppervlakte', defaultValue: 0)
  int get residentialArea;
  @override
  @JsonKey(name: 'AantalBadkamers', defaultValue: 0)
  int get numOfBath;
  @override
  @JsonKey(name: 'AantalSlaapkamers', defaultValue: 0)
  int get numOfBeds;
  @override
  @JsonKey(name: 'WGS84_Y', defaultValue: 0)
  double get lat;
  @override
  @JsonKey(name: 'WGS84_X', defaultValue: 0)
  double get lon;
  @override
  @JsonKey(name: 'MakelaarTelefoon', defaultValue: '')
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_RealtyDTOCopyWith<_$_RealtyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
