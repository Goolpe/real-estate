// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaItemDTO _$$_MediaItemDTOFromJson(Map<String, dynamic> json) =>
    _$_MediaItemDTO(
      url: json['Url'] as String? ?? '',
      category: $enumDecodeNullable(
              _$MediaItemCategoryEnumMap, json['Category'],
              unknownValue: MediaItemCategory.unknown) ??
          MediaItemCategory.unknown,
    );

const _$MediaItemCategoryEnumMap = {
  MediaItemCategory.small: 1,
  MediaItemCategory.mid: 4,
  MediaItemCategory.large: 6,
  MediaItemCategory.extraLarge: 7,
  MediaItemCategory.unknown: 'unknown',
};
