import 'package:flutter/material.dart';

class RechargeButtonWidget extends StatelessWidget {
  const RechargeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
