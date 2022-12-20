import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

class RealtyLocation extends StatelessWidget {
  const RealtyLocation({
    required this.lat,
    required this.lon,
    super.key,
  });

  final double lat;
  final double lon;

  @override
  Widget build(BuildContext context) {
    final target = LatLng(lat, lon);

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
              initialCameraPosition: CameraPosition(target: target, zoom: 17),
              markers: {
                Marker(
                  markerId: MarkerId('$lat $lon'),
                  position: target,
                )
              },
            ),
          ),
        ],
      ),
    );
  }
}
