import 'dart:convert';

import 'package:project_source/models/all_stations_class.dart';
import 'package:http/http.dart' as http;

Future<List<AllStation>> apiLoadLines()async{
  final uri = Uri.parse("https://api.tmb.cat/v1/transit/linies/metro?app_id=9a0ad75d&app_key=286c514e860aba9c094078dcf4a5d4c4");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonStationsList = json["features"];
  final List<AllStation> stationsList=[];
  for(final jsonStations in jsonStationsList){
    final stations = AllStation.fromJson(jsonStations);
    stationsList.add(stations);
  }
  return stationsList;
}