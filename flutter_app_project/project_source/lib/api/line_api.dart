import 'dart:convert';

import 'package:project_source/models/line_class.dart';
import 'package:http/http.dart' as http;

Future<List<Line>> apiLoadLines()async{
  final uri = Uri.parse("https://api.tmb.cat/v1/transit/linies/metro?app_id=9a0ad75d&app_key=286c514e860aba9c094078dcf4a5d4c4");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonLineList = json["features"];
  final List<Line> lineList=[];
  for(final jsonLine in jsonLineList){
    final line = Line.fromJson(jsonLine);
    lineList.add(line);
  }
  return lineList;
}