import 'package:flutter/material.dart';

class MTALogoWidget extends StatelessWidget {
  const MTALogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Container(
        color: const Color.fromRGBO(217, 217, 217, 1),
        child: Stack(
          children: [
            Container(
              height: 22,
              color: const Color.fromRGBO(95, 109, 255, 1),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 3, right: 3),
                child: Text(
                  "MTA",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
