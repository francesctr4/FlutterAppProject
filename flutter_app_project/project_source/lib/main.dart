import 'package:flutter/material.dart';
import 'package:project_source/screens/base_screen.dart';

import 'screens/stations_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const BaseScreen(), // Home, e-Card, Lines
        "/stationsScreen": (context) => const StationsScreen(), // From Lines
      },
    );
  }
}
