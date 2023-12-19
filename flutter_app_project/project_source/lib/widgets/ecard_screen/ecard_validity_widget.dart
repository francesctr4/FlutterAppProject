import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';
import 'package:project_source/widgets/ecard_screen/ecard_validity_bar_widget.dart';

import 'ecard_validity_main_row_widget.dart';
import 'ecard_recharge_button_widget.dart';

class EcardValidityWidget extends StatelessWidget {
  const EcardValidityWidget({
    super.key,
    required this.ecard,
  });

  final Ecard ecard;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          EcardValidityMainRowWidget(ecard: ecard),
          const ValidityBarWidget(validityPercentage: 20),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              height: 1,
              color: const Color.fromRGBO(209, 209, 209, 1),
            ),
          ),
          const RechargeButtonWidget(),
        ],
      ),
    );
  }
}
