import 'package:flutter/material.dart';

abstract class CustomSnackBar extends SnackBar {
  const CustomSnackBar({
    required super.content,
    required super.duration,
    super.key,
  });

  show(BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(this);
}
