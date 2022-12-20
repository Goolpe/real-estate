import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realestate/data/dto/media_item_dto.dart';

part 'media_dto.freezed.dart';

part 'media_dto.g.dart';

@freezed
class MediaDTO with _$MediaDTO {
  const factory MediaDTO({
    required String id,
    @JsonKey(
      name: 'Categorie',
      defaultValue: MediaCategory.unknown,
      unknownEnumValue: MediaCategory.unknown,
    )
        required MediaCategory category,
    @JsonKey(defaultValue: [])
        required List<MediaItemDTO> mediaItems,
  }) = _MediaDTO;

  factory MediaDTO.fromJson(Map<String, dynamic> json) =>
      _$MediaDTOFromJson(json);
}

enum MediaCategory {
  @JsonValue(1)
  photo,
  @JsonValue(3)
  pdf,
  @JsonValue(4)
  meta,
  @JsonValue(5)
  xml,
  unknown,
}
