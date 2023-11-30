import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';

class EcardWidget extends StatelessWidget {
  const EcardWidget({
    super.key,
    required this.ecard,
  });

  final Ecard ecard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment(0.0, 1.0),
          end: Alignment(1.0, 0.0),
          colors: <Color>[
            Color.fromRGBO(64, 70, 136, 1),
            Color.fromRGBO(95, 109, 255, 1),
          ],
        ),
      ),
    );
  }
}
