import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';

class EcardValidityMainRowWidget extends StatelessWidget {
  const EcardValidityMainRowWidget({
    super.key,
    required this.ecard,
  });

  final Ecard ecard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(64, 70, 136, 1),
                  ),
                  child: Transform.rotate(
                    angle: 90 * pi / 180,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.confirmation_num,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ecard.titleCharged,
                    style: const TextStyle(
                      color: Color.fromRGBO(190, 190, 190, 1),
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    "Valid until",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ecard.validity,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 25,
            color: Color.fromRGBO(156, 156, 156, 1),
          ),
        ],
      ),
    );
  }
}
