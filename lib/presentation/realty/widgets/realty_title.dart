import 'package:flutter/material.dart';
import 'package:realestate/core/theme/theme.dart';
import 'package:realestate/presentation/widgets/widgets.dart';
import 'package:share_plus/share_plus.dart';

class RealtyTitle extends StatelessWidget {
  const RealtyTitle({
    required this.price,
    required this.address,
    required this.shareUrl,
    super.key,
  });

  final String price;
  final String address;
  final String shareUrl;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LargeTitle(price),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: textTheme.caption?.color,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      address,
                      style: textTheme.caption?.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              CrossIcon.share,
              color: Colors.black,
            ),
            onPressed: () => Share.share(shareUrl),
          ),
        ],
      ),
    );
  }
}
