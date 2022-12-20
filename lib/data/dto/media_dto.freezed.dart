// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaDTO _$MediaDTOFromJson(Map<String, dynamic> json) {
  return _MediaDTO.fromJson(json);
}

/// @nodoc
mixin _$MediaDTO {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'Categorie',
      defaultValue: MediaCategory.unknown,
      unknownEnumValue: MediaCategory.unknown)
  MediaCategory get category => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<MediaItemDTO> get mediaItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaDTOCopyWith<MediaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDTOCopyWith<$Res> {
  factory $MediaDTOCopyWith(MediaDTO value, $Res Function(MediaDTO) then) =
      _$MediaDTOCopyWithImpl<$Res, MediaDTO>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'Categorie', defaultValue: MediaCategory.unknown, unknownEnumValue: MediaCategory.unknown)
          MediaCategory category,
      @JsonKey(defaultValue: [])
          List<MediaItemDTO> mediaItems});
}

/// @nodoc
class _$MediaDTOCopyWithImpl<$Res, $Val extends MediaDTO>
    implements $MediaDTOCopyWith<$Res> {
  _$MediaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? mediaItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MediaCategory,
      mediaItems: null == mediaItems
          ? _value.mediaItems
          : mediaItems // ignore: cast_nullable_to_non_nullable
              as List<MediaItemDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaDTOCopyWith<$Res> implements $MediaDTOCopyWith<$Res> {
  factory _$$_MediaDTOCopyWith(
          _$_MediaDTO value, $Res Function(_$_MediaDTO) then) =
      __$$_MediaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'Categorie', defaultValue: MediaCategory.unknown, unknownEnumValue: MediaCategory.unknown)
          MediaCategory category,
      @JsonKey(defaultValue: [])
          List<MediaItemDTO> mediaItems});
}

/// @nodoc
class __$$_MediaDTOCopyWithImpl<$Res>
    extends _$MediaDTOCopyWithImpl<$Res, _$_MediaDTO>
    implements _$$_MediaDTOCopyWith<$Res> {
  __$$_MediaDTOCopyWithImpl(
      _$_MediaDTO _value, $Res Function(_$_MediaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? mediaItems = null,
  }) {
    return _then(_$_MediaDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MediaCategory,
      mediaItems: null == mediaItems
          ? _value._mediaItems
          : mediaItems // ignore: cast_nullable_to_non_nullable
              as List<MediaItemDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MediaDTO implements _MediaDTO {
  const _$_MediaDTO(
      {required this.id,
      @JsonKey(name: 'Categorie', defaultValue: MediaCategory.unknown, unknownEnumValue: MediaCategory.unknown)
          required this.category,
      @JsonKey(defaultValue: [])
          required final List<MediaItemDTO> mediaItems})
      : _mediaItems = mediaItems;

  factory _$_MediaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MediaDTOFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(
      name: 'Categorie',
      defaultValue: MediaCategory.unknown,
      unknownEnumValue: MediaCategory.unknown)
  final MediaCategory category;
  final List<MediaItemDTO> _mediaItems;
  @override
  @JsonKey(defaultValue: [])
  List<MediaItemDTO> get mediaItems {
    if (_mediaItems is EqualUnmodifiableListView) return _mediaItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaItems);
  }

  @override
  String toString() {
    return 'MediaDTO(id: $id, category: $category, mediaItems: $mediaItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._mediaItems, _mediaItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, category,
      const DeepCollectionEquality().hash(_mediaItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaDTOCopyWith<_$_MediaDTO> get copyWith =>
      __$$_MediaDTOCopyWithImpl<_$_MediaDTO>(this, _$identity);
}

abstract class _MediaDTO implements MediaDTO {
  const factory _MediaDTO(
      {required final String id,
      @JsonKey(name: 'Categorie', defaultValue: MediaCategory.unknown, unknownEnumValue: MediaCategory.unknown)
          required final MediaCategory category,
      @JsonKey(defaultValue: [])
          required final List<MediaItemDTO> mediaItems}) = _$_MediaDTO;

  factory _MediaDTO.fromJson(Map<String, dynamic> json) = _$_MediaDTO.fromJson;

  @override
  String get id;
  @override
  @JsonKey(
      name: 'Categorie',
      defaultValue: MediaCategory.unknown,
      unknownEnumValue: MediaCategory.unknown)
  MediaCategory get category;
  @override
  @JsonKey(defaultValue: [])
  List<MediaItemDTO> get mediaItems;
  @override
  @JsonKey(ignore: true)
  _$$_MediaDTOCopyWith<_$_MediaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
