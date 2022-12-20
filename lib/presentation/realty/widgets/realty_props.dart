import 'package:flutter/material.dart';
import 'package:realestate/core/utils/utils.dart';
import 'package:realestate/presentation/realty/widgets/realty_chip.dart';

class RealtyProps extends StatelessWidget {
  const RealtyProps({
    required this.plotArea,
    required this.residentialArea,
    required this.numOfBath,
    required this.numOfBeds,
    super.key,
  });

  final int plotArea;
  final int residentialArea;
  final int numOfBath;
  final int numOfBeds;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          if (residentialArea != 0)
            RealtyChip(
              iconData: Icons.zoom_out_map_outlined,
              label: '$residentialArea m²',
            ),
          if (plotArea != 0)
            RealtyChip(
              iconData: Icons.photo_size_select_small_sharp,
              label: '$plotArea m²',
            ),
          if (numOfBeds != 0)
            RealtyChip(
              iconData: Icons.bed_outlined,
              label: '$numOfBeds Beds',
            ),
          if (numOfBath != 0)
            RealtyChip(
              iconData: Icons.bathtub_outlined,
              label: '$numOfBath Bath',
            ),
        ].separated(const SizedBox(width: 6)).toList(),
      ),
    );
  }
}
