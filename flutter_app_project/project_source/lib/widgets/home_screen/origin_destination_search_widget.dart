import 'package:flutter/material.dart';

class OriginDestinationSearchWidget extends StatelessWidget {
  const OriginDestinationSearchWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width - 50,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  "/combinationsScreen",
                  arguments: "Origin",
                );
              },
              child: Container(
                width: screenSize.width - 100,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Origin',
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: screenSize.width - 100,
            height: 1,
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                "/combinationsScreen",
                arguments: "Destination",
              );
            },
            child: Container(
              width: screenSize.width - 100,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Destination',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 26, right: 26),
            child: SizedBox(
              width: screenSize.width,
              height: 36,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 32, 40, 127),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                child: const Text(
                  'Search Combination',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
