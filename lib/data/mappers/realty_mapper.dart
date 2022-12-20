import 'package:realestate/core/utils/mapper.dart';
import 'package:realestate/data/dto/media_dto.dart';
import 'package:realestate/data/dto/media_item_dto.dart';
import 'package:realestate/data/dto/realty_dto.dart';
import 'package:realestate/domain/entities/latlon.dart';
import 'package:realestate/domain/entities/realty.dart';
import 'package:realestate/domain/entities/realty_photo.dart';

class RealtyMapper implements Mapper<RealtyDTO, Realty> {
  @override
  Realty fromDTOToEntity(RealtyDTO dto) {
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
      largePhotos: dto.media._retrievePhotos().toList(),
      latLon: LatLon(dto.lat, dto.lon),
      price: dto.price.price,
      abbreviation: dto.price.abbreviation,
      phone: dto.phone,
    );
  }
}

extension _ListMediaDTOExt on List<MediaDTO> {
  Iterable<LargeRealtyPhoto> _retrievePhotos() sync* {
    for (final mediaValue in this) {
      if (mediaValue.category == MediaCategory.photo) {
        for (final mediaItems in mediaValue.mediaItems) {
          if (mediaItems.category == MediaItemCategory.large) {
            yield LargeRealtyPhoto(mediaItems.url);
          }
        }
      }
    }
  }
}
