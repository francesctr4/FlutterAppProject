import 'package:flutter/material.dart';

class EcardReverseContentsWidget extends StatelessWidget {
  const EcardReverseContentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(64, 70, 136, 1),
      ),
      child: const Stack(
        children: [],
      ),
    );
  }
}
