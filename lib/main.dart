import 'package:flutter/material.dart';

import 'presentation/dependency_injection.dart';
import 'presentation/numerals_converter/pages/numerals_converter_page.dart';

void main() {
  initiateGetIt();

  runApp(const NumeralsConverterApp());
}

class NumeralsConverterApp extends StatelessWidget {
  const NumeralsConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roman Numerals Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const NumeralsConverterPage(),
      },
    );
  }
}
