import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';
import 'package:project_source/widgets/ecard_latest_trip_widget.dart';
import 'package:provider/provider.dart';

import '../widgets/ecard_validity_widget.dart';
import '../widgets/ecard_widget.dart';

class ECardScreen extends StatelessWidget {
  const ECardScreen({
    super.key,
    required this.ecard,
  });

  final Ecard ecard;

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: ecard,
      child: SingleChildScrollView(
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
                child: EcardValidityWidget(ecard: ecard),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: LatestTripWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
