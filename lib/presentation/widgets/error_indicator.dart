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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error),
          TextButton.icon(
            icon: const Icon(Icons.refresh),
            onPressed: onRefresh,
            label: const Text('Repeat request'),
          )
        ],
      ),
    );
  }
}
