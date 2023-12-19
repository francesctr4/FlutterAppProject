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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.white,
            ),
          ),
          const Center(
            child: Text(
              "e-Card",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Francesc",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Teruel Rodriguez",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.train,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.tram,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
