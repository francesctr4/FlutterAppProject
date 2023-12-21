import 'package:flutter/material.dart';
import 'package:project_source/models/station_home_class.dart';

class OriginDestinationSearchWidget extends StatefulWidget {
  const OriginDestinationSearchWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  State<OriginDestinationSearchWidget> createState() =>
      _OriginDestinationSearchWidgetState();
}

class _OriginDestinationSearchWidgetState
    extends State<OriginDestinationSearchWidget> {
  String originStationName = "Origin";
  String destinationStationName = "Destination";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.screenSize.width - 50,
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
                final result = Navigator.of(context).pushNamed(
                  "/combinationsScreen",
                  arguments: "Origin",
                );
                result.then(
                  (station) {
                    if (station != null) {
                      final originStation = station as StationHome;
                      setState(() {
                        originStationName = originStation.stationName!;
                      });
                    }
                  },
                );
              },
              child: Container(
                width: widget.screenSize.width - 100,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: originStationName == "Origin"
                      ? Text(
                          originStationName,
                        )
                      : Text(
                          originStationName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                ),
              ),
            ),
          ),
          Container(
            width: widget.screenSize.width - 100,
            height: 1,
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: () {
              final result = Navigator.of(context).pushNamed(
                "/combinationsScreen",
                arguments: "Destination",
              );
              result.then(
                (station) {
                  if (station != null) {
                    final destinationStation = station as StationHome;
                    setState(() {
                      destinationStationName = destinationStation.stationName!;
                    });
                  }
                },
              );
            },
            child: Container(
              width: widget.screenSize.width - 100,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Align(
                alignment: Alignment.center,
                child: destinationStationName == "Destination"
                    ? Text(
                        destinationStationName,
                      )
                    : Text(
                        destinationStationName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 26, right: 26),
            child: SizedBox(
              width: widget.screenSize.width,
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
