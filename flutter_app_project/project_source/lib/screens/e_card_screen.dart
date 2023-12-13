import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';

import '../widgets/ecard_widget.dart';

class ECardScreen extends StatelessWidget {
  const ECardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: EcardWidget(
              ecard: Ecard(
                name: "Francesc",
                firstSurname: "Teruel",
                secondSurname: "Rodríguez",
                state: true,
                profile: "Youth",
                expiry: "10/24/2033",
                uid: "004 127 925HJ",
                titleCharged: "e-Youth",
                validity: "December 16th",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
