abstract class RealtyPhoto {
  RealtyPhoto(this.url);

  final String url;
}

class LargeRealtyPhoto extends RealtyPhoto {
  LargeRealtyPhoto(super.url);
}
