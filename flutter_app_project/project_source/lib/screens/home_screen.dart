import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 700,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage("resources/Home_Screen_Train.png"),
                  ),
                ),
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      begin: Alignment(0.0, 1.0),
                      end: Alignment(1.0, 0.0),
                      colors: <Color>[
                        Color.fromRGBO(64, 70, 136, 1),
                        Color.fromRGBO(95, 109, 255, 1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
