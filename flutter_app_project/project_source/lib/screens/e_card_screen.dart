import 'package:flutter/material.dart';
import 'package:project_source/widgets/bottom_bar.dart';

class ECardScreen extends StatelessWidget {
  const ECardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "e-Card",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          toolbarHeight: 70,
          backgroundColor: const Color.fromRGBO(226, 238, 252, 1),
          foregroundColor: Colors.black,
          leading: null),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBar(
              highlighted: "e-Card",
            ),
          ),
        ],
      ),
    );
  }
}
