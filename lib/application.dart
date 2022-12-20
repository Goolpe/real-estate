import 'package:flutter/material.dart';
import 'package:realestate/core/api/api.dart';
import 'package:realestate/core/theme/theme.dart';
import 'package:realestate/presentation/realty/pages/realty_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightThemeData.theme,
      home: const RealtyPage(id: API.id),
    );
  }
}
