import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestate/core/constants/constants.dart';
import 'package:realestate/domain/entities/latlon.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

class RealtyLocation extends StatelessWidget {
  const RealtyLocation({
    required this.latLon,
    super.key,
  });

  final LatLon latLon;

  CameraPosition get _cameraPosition {
    if (latLon.hasNull) {
      return CameraPosition(
        target: LatLng(
          Constants.defaultLocation.lat,
          Constants.defaultLocation.lon,
        ),
        zoom: 11,
      );
    }

    return CameraPosition(
      target: LatLng(latLon.lat, latLon.lon),
      zoom: 17,
    );
  }

  LatLng get _target => _cameraPosition.target;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MidTitle('Location'),
          const SizedBox(height: 16),
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: GoogleMap(
              initialCameraPosition: _cameraPosition,
              markers: {
                if (!latLon.hasNull)
                  Marker(
                    markerId:
                        MarkerId('${_target.latitude} ${_target.longitude}'),
                    position: _target,
                  )
              },
            ),
          ),
        ],
      ),
    );
  }
}
