import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 500,
            height: 300,
            child: Stack(
              children: [
                Image(image: AssetImage("resources/Home_Screen_Train.png")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
