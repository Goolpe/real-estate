import 'package:flutter/material.dart';
import 'package:realestate/domain/entities/realty_photo.dart';

class RealtyPhotos extends StatefulWidget {
  const RealtyPhotos({
    required this.photos,
    super.key,
  });

  final List<RealtyPhoto> photos;

  @override
  State<RealtyPhotos> createState() => _RealtyPhotosState();
}

class _RealtyPhotosState extends State<RealtyPhotos> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: widget.photos.isEmpty
          ? const Center(child: Text('No photo'))
          : Stack(
              children: [
                PageView.builder(
                  itemCount: widget.photos.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      margin: const EdgeInsets.all(16),
                      child: Image.network(
                        widget.photos[index].url,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
                Positioned(
                  right: 32,
                  bottom: 32,
                  child: Chip(
                    label: Text('${_currentIndex + 1}/${widget.photos.length}'),
                  ),
                ),
              ],
            ),
    );
  }
}
