import 'package:flutter/material.dart';
import 'package:project_source/models/e_card_class.dart';

import 'ecard_front_contents_widget.dart';
import 'ecard_reverse_contents_widget.dart';

class EcardWidget extends StatefulWidget {
  const EcardWidget({
    super.key,
    required this.ecard,
  });

  final Ecard ecard;

  @override
  State<EcardWidget> createState() => _EcardWidgetState();
}

class _EcardWidgetState extends State<EcardWidget> {
  bool ecardReverse = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ecardReverse = !ecardReverse;
        });
      },
      child: ecardReverse
          ? const EcardReverseContentsWidget()
          : const EcardFrontContentsWidget(),
    );
  }
}
