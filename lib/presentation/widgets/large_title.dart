import 'package:flutter/material.dart';

class LargeTitle extends StatelessWidget {
  const LargeTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
