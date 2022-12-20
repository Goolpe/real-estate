import 'package:flutter/material.dart';

class RealtyChip extends StatelessWidget {
  const RealtyChip({
    required this.iconData,
    required this.label,
    super.key,
  });

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Chip(
      backgroundColor: theme.highlightColor.withOpacity(0.2),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      avatar: Icon(iconData),
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          label,
          style: theme.textTheme.caption
              ?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
