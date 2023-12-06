import 'package:flutter/material.dart';
import 'package:project_source/models/station_class.dart';

class StationListItem extends StatelessWidget {
  StationListItem({
    super.key,
    required this.station,
  });

  final Station station;

  final Map<String, Color> metroLineColors = {
    'L1': const Color.fromRGBO(213, 18, 60, 1),
    'L2': const Color.fromRGBO(157, 24, 133, 1),
    'L3': const Color.fromRGBO(18, 169, 40, 1),
    'L4': const Color.fromRGBO(252, 184, 6, 1),
    'L5': const Color.fromRGBO(44, 114, 169, 1),
    'L9N': const Color.fromRGBO(239, 143, 46, 1),
    'L9S': const Color.fromRGBO(239, 143, 46, 1),
    'L10N': const Color.fromRGBO(3, 170, 230, 1),
    'L10S': const Color.fromRGBO(3, 170, 230, 1),
    'L11': const Color.fromRGBO(160, 216, 55, 1),
    'FM': const Color.fromRGBO(13, 79, 59, 1),
  };

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 45,
        height: 45,
        color: metroLineColors[station.lineName],
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "${station.stationName}",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
      title: Text(
        "Line ${station.stationName}",
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
      subtitle: Text(
        "${station.firstStation!} - ${station.lastStation!}",
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
