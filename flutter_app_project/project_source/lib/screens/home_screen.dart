import 'package:flutter/material.dart';

import '../widgets/home_screen/favorite_routes_widget.dart';
import '../widgets/home_screen/favorite_stations_widget.dart';
import '../widgets/home_screen/origin_destination_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      color: const Color.fromRGBO(226, 238, 252, 1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: screenSize.width,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'resources/Home_Screen_Train.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 1),
                    child:
                        OriginDestinationSearchWidget(screenSize: screenSize),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Favorite Routes',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: FavoriteRoutesWidget(screenSize: screenSize),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Favorite Stations',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 20),
              child: FavoriteStationsWidget(screenSize: screenSize),
            ),
          ],
        ),
      ),
    );
  }
}
