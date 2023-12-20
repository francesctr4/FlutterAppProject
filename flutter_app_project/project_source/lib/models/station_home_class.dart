class StationHome {
  String? stationName;
  String? lineName;

  StationHome.fromJson(Map<String, dynamic> json) {
    stationName = json["properties"]["NOM_ESTACIO"];
  }
}
