import 'package:flutter/material.dart';

import 'screens/e_card_screen.dart';
import 'screens/home_screen.dart';
import 'screens/lines_screen.dart';
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
        "/": (context) => const HomeScreen(),
        "/ecardScreen": (context) => const ECardScreen(),
        "/linesScreen": (context) => const LinesScreen(),
        "/stationsScreen": (context) => const StationsScreen(),
      },
    );
  }
}
