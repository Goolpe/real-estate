// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaDTO _$$_MediaDTOFromJson(Map<String, dynamic> json) => _$_MediaDTO(
      id: json['Id'] as String,
      category: $enumDecodeNullable(_$MediaCategoryEnumMap, json['Categorie'],
              unknownValue: MediaCategory.unknown) ??
          MediaCategory.unknown,
      mediaItems: (json['MediaItems'] as List<dynamic>?)
              ?.map((e) => MediaItemDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

const _$MediaCategoryEnumMap = {
  MediaCategory.photo: 1,
  MediaCategory.pdf: 3,
  MediaCategory.meta: 4,
  MediaCategory.xml: 5,
  MediaCategory.unknown: 'unknown',
};
