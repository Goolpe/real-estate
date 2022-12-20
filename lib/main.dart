import 'package:flutter/material.dart';
import 'package:realestate/application.dart';
import 'package:realestate/core/utils/utils.dart';

void main() {
  ServiceLocator.init();

  runApp(const Application());
}
