// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceDTO _$PriceDTOFromJson(Map<String, dynamic> json) {
  return _PriceDTO.fromJson(json);
}

/// @nodoc
mixin _$PriceDTO {
  @JsonKey(name: 'KoopAbbreviation', defaultValue: '')
  String get abbreviation => throw _privateConstructorUsedError;
  @JsonKey(name: 'Koopprijs', defaultValue: 0)
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceDTOCopyWith<PriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceDTOCopyWith<$Res> {
  factory $PriceDTOCopyWith(PriceDTO value, $Res Function(PriceDTO) then) =
      _$PriceDTOCopyWithImpl<$Res, PriceDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'KoopAbbreviation', defaultValue: '') String abbreviation,
      @JsonKey(name: 'Koopprijs', defaultValue: 0) int price});
}

/// @nodoc
class _$PriceDTOCopyWithImpl<$Res, $Val extends PriceDTO>
    implements $PriceDTOCopyWith<$Res> {
  _$PriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviation = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceDTOCopyWith<$Res> implements $PriceDTOCopyWith<$Res> {
  factory _$$_PriceDTOCopyWith(
          _$_PriceDTO value, $Res Function(_$_PriceDTO) then) =
      __$$_PriceDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'KoopAbbreviation', defaultValue: '') String abbreviation,
      @JsonKey(name: 'Koopprijs', defaultValue: 0) int price});
}

/// @nodoc
class __$$_PriceDTOCopyWithImpl<$Res>
    extends _$PriceDTOCopyWithImpl<$Res, _$_PriceDTO>
    implements _$$_PriceDTOCopyWith<$Res> {
  __$$_PriceDTOCopyWithImpl(
      _$_PriceDTO _value, $Res Function(_$_PriceDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviation = null,
    Object? price = null,
  }) {
    return _then(_$_PriceDTO(
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_PriceDTO implements _PriceDTO {
  const _$_PriceDTO(
      {@JsonKey(name: 'KoopAbbreviation', defaultValue: '')
          required this.abbreviation,
      @JsonKey(name: 'Koopprijs', defaultValue: 0)
          required this.price});

  factory _$_PriceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PriceDTOFromJson(json);

  @override
  @JsonKey(name: 'KoopAbbreviation', defaultValue: '')
  final String abbreviation;
  @override
  @JsonKey(name: 'Koopprijs', defaultValue: 0)
  final int price;

  @override
  String toString() {
    return 'PriceDTO(abbreviation: $abbreviation, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceDTO &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, abbreviation, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceDTOCopyWith<_$_PriceDTO> get copyWith =>
      __$$_PriceDTOCopyWithImpl<_$_PriceDTO>(this, _$identity);
}

abstract class _PriceDTO implements PriceDTO {
  const factory _PriceDTO(
      {@JsonKey(name: 'KoopAbbreviation', defaultValue: '')
          required final String abbreviation,
      @JsonKey(name: 'Koopprijs', defaultValue: 0)
          required final int price}) = _$_PriceDTO;

  factory _PriceDTO.fromJson(Map<String, dynamic> json) = _$_PriceDTO.fromJson;

  @override
  @JsonKey(name: 'KoopAbbreviation', defaultValue: '')
  String get abbreviation;
  @override
  @JsonKey(name: 'Koopprijs', defaultValue: 0)
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_PriceDTOCopyWith<_$_PriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
