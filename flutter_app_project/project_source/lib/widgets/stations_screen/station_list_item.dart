import 'package:flutter/material.dart';
import 'package:project_source/models/metro_line_colors_map.dart';
import 'package:project_source/models/station_class.dart';

class StationListItem extends StatelessWidget {
  const StationListItem({
    super.key,
    required this.station,
  });

  final Station station;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: metroLineColors[station.lineName],
          ),
          child: const Align(
            alignment: Alignment.center,
          )),
      title: Text(
        "${station.stationName}",
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
      ),
      contentPadding: const EdgeInsets.all(10),
    );
  }
}
