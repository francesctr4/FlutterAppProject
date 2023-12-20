import 'package:flutter/material.dart';
import 'package:project_source/models/station_home_class.dart';

class CombinationsListItem extends StatelessWidget {
  const CombinationsListItem({
    super.key,
    required this.station,
  });

  final StationHome station;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${station.stationName}",
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      contentPadding: const EdgeInsets.all(10),
    );
  }
}
