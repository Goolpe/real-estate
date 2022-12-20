import 'package:flutter/material.dart';
import 'package:realestate/domain/entities/realty.dart';
import 'package:realestate/presentation/realty/widgets/realty_description/realty_description.dart';
import 'package:realestate/presentation/realty/widgets/realty_location.dart';
import 'package:realestate/presentation/realty/widgets/realty_phone_button.dart';
import 'package:realestate/presentation/realty/widgets/realty_photos.dart';
import 'package:realestate/presentation/realty/widgets/realty_props.dart';
import 'package:realestate/presentation/realty/widgets/realty_title.dart';

class RealtyDetails extends StatelessWidget {
  const RealtyDetails({
    required this.data,
    super.key,
  });

  final Realty data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RealtyPhotos(
                photos: data.largePhotos,
              ),
              RealtyTitle(
                price: data.priceAsCurrency,
                address: data.fullAddress,
                shareUrl: data.url,
              ),
              RealtyProps(
                plotArea: data.plotArea,
                residentialArea: data.residentialArea,
                numOfBath: data.numOfBath,
                numOfBeds: data.numOfBeds,
              ),
              const Divider(),
              if (data.description.isNotEmpty)
                RealtyDescription(description: data.description),
              RealtyLocation(
                latLon: data.latLon,
              ),
            ],
          ),
        ),
        if (data.phone.isNotEmpty)
          Positioned(
            bottom: 30,
            child: RealtyPhoneButton(phone: data.phone),
          )
      ],
    );
  }
}
