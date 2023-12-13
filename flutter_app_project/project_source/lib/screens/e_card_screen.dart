import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';
import 'package:project_source/widgets/latest_trip_widget.dart';

import '../widgets/ecard_widget.dart';

class ECardScreen extends StatelessWidget {
  const ECardScreen({super.key});

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
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: 450,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromRGBO(209, 209, 209, 1),
                    width: 2.0,
                  ),
                ),
                child: Column(
                  children: [
                    const Text("Valid until"),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, elevation: 0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(64, 70, 136, 1),
                              Color.fromRGBO(95, 109, 255, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              maxWidth: 300.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: const Text(
                            "Recharge",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
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
