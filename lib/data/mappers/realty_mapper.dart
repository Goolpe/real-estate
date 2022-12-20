import 'package:realestate/core/utils/mapper.dart';
import 'package:realestate/data/dto/media_dto.dart';
import 'package:realestate/data/dto/media_item_dto.dart';
import 'package:realestate/data/dto/realty_dto.dart';
import 'package:realestate/domain/entities/realty.dart';
import 'package:realestate/domain/entities/realty_photo.dart';

class RealtyMapper implements Mapper<RealtyDTO, Realty> {
  @override
  Realty fromDTOToEntity(RealtyDTO dto) {
    final largePhotos = <LargeRealtyPhoto>[];
    final extraLargePhotos = <ExtraLargeRealtyPhoto>[];

    for (final mediaValue in dto.media) {
      if (mediaValue.category == MediaCategory.photo) {
        for (final mediaItems in mediaValue.mediaItems) {
          switch (mediaItems.category) {
            case MediaItemCategory.large:
              largePhotos.add(LargeRealtyPhoto(mediaItems.url));
              break;
            case MediaItemCategory.extraLarge:
              extraLargePhotos.add(ExtraLargeRealtyPhoto(mediaItems.url));
              break;
            default:
              break;
          }
        }
      }
    }

    return Realty(
      id: dto.id,
      url: dto.url,
      address: dto.address,
      description: dto.description,
      plotArea: dto.plotArea,
      residentialArea: dto.residentialArea,
      numOfBath: dto.numOfBath,
      numOfBeds: dto.numOfBeds,
      postcode: dto.postcode,
      place: dto.place,
      largePhotos: largePhotos,
      extraLargePhotos: extraLargePhotos,
      lat: dto.lat,
      lon: dto.lon,
      price: dto.price.price,
      abbreviation: dto.price.abbreviation,
      phone: dto.phone,
    );
  }
}
