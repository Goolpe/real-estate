import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_dto.freezed.dart';

part 'price_dto.g.dart';

@freezed
class PriceDTO with _$PriceDTO {
  const factory PriceDTO({
    @JsonKey(name: 'KoopAbbreviation', defaultValue: '')
        required String abbreviation,
    @JsonKey(name: 'Koopprijs', defaultValue: 0) required int price,
  }) = _PriceDTO;

  factory PriceDTO.fromJson(Map<String, dynamic> json) =>
      _$PriceDTOFromJson(json);
}

enum PriceCategory {
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
