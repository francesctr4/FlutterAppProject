import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';
import 'package:project_source/widgets/mta_logo_widget.dart';

class EcardFrontContentsWidget extends StatelessWidget {
  const EcardFrontContentsWidget({
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
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: MTALogoWidget(),
            ),
          ),
          const Center(
            child: Text(
              "e-Card",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 30),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ecard.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "${ecard.firstSurname} ${ecard.secondSurname}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 30, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.train,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.tram,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
