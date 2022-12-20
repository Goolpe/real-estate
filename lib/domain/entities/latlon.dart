class LatLon {
  const LatLon(
    this.lat,
    this.lon,
  );

  final double lat;
  final double lon;

  bool get hasNull => lat == 0 || lon == 0;
}
