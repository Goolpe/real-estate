import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({
    required this.error,
    required this.onRefresh,
    super.key,
  });

  final String error;
  final Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              error,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton.icon(
              key: const Key('Refresh'),
              icon: const Icon(Icons.refresh),
              onPressed: onRefresh,
              label: const Text('Repeat request'),
            )
          ],
        ),
      ),
    );
  }
}
