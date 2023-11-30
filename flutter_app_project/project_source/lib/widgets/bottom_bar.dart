import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({
    super.key,
    this.highlighted,
  });

  final String? highlighted;

  final Color selected = Colors.white;
  final Color notSelected = const Color.fromARGB(100, 255, 255, 255);

  late final Color homeColor = (highlighted == "Home") ? selected : notSelected;
  late final Color eCardColor =
      (highlighted == "e-Card") ? selected : notSelected;
  late final Color linesColor =
      (highlighted == "Lines") ? selected : notSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromRGBO(64, 70, 136, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)!.settings.name != "/") {
                Navigator.pushReplacementNamed(context, "/");
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 40,
                  color: homeColor,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    color: homeColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)!.settings.name != "/ecardScreen") {
                Navigator.pushReplacementNamed(context, "/ecardScreen");
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.credit_card,
                  size: 40,
                  color: eCardColor,
                ),
                Text(
                  "e-Card",
                  style: TextStyle(
                    color: eCardColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)!.settings.name != "/linesScreen") {
                Navigator.pushReplacementNamed(context, "/linesScreen");
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.directions_subway,
                  size: 40,
                  color: linesColor,
                ),
                Text(
                  "Lines",
                  style: TextStyle(
                    color: linesColor,
                    fontSize: 20,
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
