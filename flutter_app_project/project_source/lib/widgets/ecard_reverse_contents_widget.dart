import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';

class EcardReverseContentsWidget extends StatelessWidget {
  const EcardReverseContentsWidget({
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
        color: const Color.fromRGBO(64, 70, 136, 1),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Card Issuer"),
                Text("MTA"),
                Text("State"),
                Text(ecard.state ? "Active" : "Inactive"),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Profile ${ecard.profile}"),
                Text("Expiry ${ecard.expiry}"),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              ecard.uid,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "e-card.en",
                ),
                Text(
                  "900 928 900",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
