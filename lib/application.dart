import 'package:flutter/material.dart';
import 'package:realestate/presentation/realty/pages/realty_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RealtyPage(),
    );
  }
}
