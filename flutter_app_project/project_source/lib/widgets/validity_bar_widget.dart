import 'package:flutter/material.dart';

class ValidityBarWidget extends StatelessWidget {
  const ValidityBarWidget({
    super.key,
    required this.validityPercentage,
  });

  final int validityPercentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 10, 80, 18),
          child: Container(
            height: 6,
            color: const Color.fromRGBO(217, 217, 217, 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 10, 80, 18),
          child: Container(
            height: 6,
            width: validityPercentage.toDouble() * (285 / 100),
            color: const Color.fromRGBO(64, 70, 136, 1),
          ),
        ),
      ],
    );
  }
}
