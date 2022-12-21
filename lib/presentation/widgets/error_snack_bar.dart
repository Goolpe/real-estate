import 'package:flutter/material.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

class ErrorSnackBar extends CustomSnackBar {
  ErrorSnackBar(
    String title, {
    super.key,
  }) : super(
          content: Text(
            title,
            textAlign: TextAlign.center,
          ),
          duration: const Duration(seconds: 1),
        );
}
