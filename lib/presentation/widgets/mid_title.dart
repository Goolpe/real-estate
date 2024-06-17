import 'package:flutter/material.dart';

class MidTitle extends StatelessWidget {
  const MidTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
