import 'dart:convert';

import 'package:project_source/models/station_home_class.dart';
import 'package:http/http.dart' as http;

Future<List<StationHome>> apiLoadAllStations() async {
  final uri = Uri.parse(
      "https://api.tmb.cat/v1/transit/estacions?app_id=9a0ad75d&app_key=286c514e860aba9c094078dcf4a5d4c4");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonStationsList = json["features"];
  final List<StationHome> stationsList = [];
  for (final jsonStations in jsonStationsList) {
    final stations = StationHome.fromJson(jsonStations);
    stationsList.add(stations);
  }
  return stationsList;
}
