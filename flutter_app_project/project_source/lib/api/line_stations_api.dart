import 'dart:convert';

import 'package:project_source/models/line_class.dart';
import 'package:project_source/models/station_class.dart';
import 'package:http/http.dart' as http;

Future<List<Station>> apiLoadStationsFromLine(Line line) async {
  final uri = Uri.parse(
      "https://api.tmb.cat/v1/transit/linies/metro/${line.lineCode}/estacions?app_id=9a0ad75d&app_key=286c514e860aba9c094078dcf4a5d4c4");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonStationList = json["features"];
  final List<Station> stationList = [];
  for (final jsonStation in jsonStationList) {
    final station = Station.fromJson(jsonStation);
    stationList.add(station);
  }
  return stationList;
}
