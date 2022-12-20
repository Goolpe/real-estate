// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaItemDTO _$MediaItemDTOFromJson(Map<String, dynamic> json) {
  return _MediaItemDTO.fromJson(json);
}

/// @nodoc
mixin _$MediaItemDTO {
  @JsonKey(defaultValue: '')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: MediaItemCategory.unknown,
      unknownEnumValue: MediaItemCategory.unknown)
  MediaItemCategory get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaItemDTOCopyWith<MediaItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaItemDTOCopyWith<$Res> {
  factory $MediaItemDTOCopyWith(
          MediaItemDTO value, $Res Function(MediaItemDTO) then) =
      _$MediaItemDTOCopyWithImpl<$Res, MediaItemDTO>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '')
          String url,
      @JsonKey(defaultValue: MediaItemCategory.unknown, unknownEnumValue: MediaItemCategory.unknown)
          MediaItemCategory category});
}

/// @nodoc
class _$MediaItemDTOCopyWithImpl<$Res, $Val extends MediaItemDTO>
    implements $MediaItemDTOCopyWith<$Res> {
  _$MediaItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MediaItemCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaItemDTOCopyWith<$Res>
    implements $MediaItemDTOCopyWith<$Res> {
  factory _$$_MediaItemDTOCopyWith(
          _$_MediaItemDTO value, $Res Function(_$_MediaItemDTO) then) =
      __$$_MediaItemDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '')
          String url,
      @JsonKey(defaultValue: MediaItemCategory.unknown, unknownEnumValue: MediaItemCategory.unknown)
          MediaItemCategory category});
}

/// @nodoc
class __$$_MediaItemDTOCopyWithImpl<$Res>
    extends _$MediaItemDTOCopyWithImpl<$Res, _$_MediaItemDTO>
    implements _$$_MediaItemDTOCopyWith<$Res> {
  __$$_MediaItemDTOCopyWithImpl(
      _$_MediaItemDTO _value, $Res Function(_$_MediaItemDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? category = null,
  }) {
    return _then(_$_MediaItemDTO(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MediaItemCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MediaItemDTO implements _MediaItemDTO {
  const _$_MediaItemDTO(
      {@JsonKey(defaultValue: '')
          required this.url,
      @JsonKey(defaultValue: MediaItemCategory.unknown, unknownEnumValue: MediaItemCategory.unknown)
          required this.category});

  factory _$_MediaItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MediaItemDTOFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String url;
  @override
  @JsonKey(
      defaultValue: MediaItemCategory.unknown,
      unknownEnumValue: MediaItemCategory.unknown)
  final MediaItemCategory category;

  @override
  String toString() {
    return 'MediaItemDTO(url: $url, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaItemDTO &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaItemDTOCopyWith<_$_MediaItemDTO> get copyWith =>
      __$$_MediaItemDTOCopyWithImpl<_$_MediaItemDTO>(this, _$identity);
}

abstract class _MediaItemDTO implements MediaItemDTO {
  const factory _MediaItemDTO(
      {@JsonKey(defaultValue: '')
          required final String url,
      @JsonKey(defaultValue: MediaItemCategory.unknown, unknownEnumValue: MediaItemCategory.unknown)
          required final MediaItemCategory category}) = _$_MediaItemDTO;

  factory _MediaItemDTO.fromJson(Map<String, dynamic> json) =
      _$_MediaItemDTO.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get url;
  @override
  @JsonKey(
      defaultValue: MediaItemCategory.unknown,
      unknownEnumValue: MediaItemCategory.unknown)
  MediaItemCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$_MediaItemDTOCopyWith<_$_MediaItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
