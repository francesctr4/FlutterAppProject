import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';
import 'package:project_source/widgets/latest_trip_widget.dart';

import '../widgets/ecard_widget.dart';
import '../widgets/validity_bar_widget.dart';

class ECardScreen extends StatelessWidget {
  const ECardScreen({
    super.key,
    required this.ecard,
  });

  final Ecard ecard;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: EcardWidget(
                ecard: ecard,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromRGBO(209, 209, 209, 1),
                    width: 2.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
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
                    const ValidityBarWidget(validityPercentage: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Container(
                        height: 1,
                        color: const Color.fromRGBO(209, 209, 209, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 12,
                        left: 60,
                        right: 60,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(64, 70, 136, 1),
                              Color.fromRGBO(95, 109, 255, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          child: Text(
                            "Recharge",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: LatestTripWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
