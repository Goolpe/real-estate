import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_item_dto.freezed.dart';
part 'media_item_dto.g.dart';

@freezed
class MediaItemDTO with _$MediaItemDTO {
  const factory MediaItemDTO({
    @JsonKey(defaultValue: '')
        required String url,
    @JsonKey(
      defaultValue: MediaItemCategory.unknown,
      unknownEnumValue: MediaItemCategory.unknown,
    )
        required MediaItemCategory category,
  }) = _MediaItemDTO;

  factory MediaItemDTO.fromJson(Map<String, dynamic> json) =>
      _$MediaItemDTOFromJson(json);
}

enum MediaItemCategory {
  @JsonValue(1)
  small,
  @JsonValue(4)
  mid,
  @JsonValue(6)
  large,
  @JsonValue(7)
  extraLarge,
  unknown,
}
