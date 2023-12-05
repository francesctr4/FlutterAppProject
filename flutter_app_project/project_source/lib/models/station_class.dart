class Station {
  String? lineName;
  String? firstStation;
  String? lastStation;
  String? stationName;
  int? stationOrder;

  Station.fromJson(Map<String, dynamic> json) {
    lineName = json["properties"]["NOM_LINIA"];
    firstStation = json["properties"]["ORIGEN_SERVEI"];
    lastStation = json["properties"]["DESTI_SERVEI"];
    stationName = json["properties"]["NOM_ESTACIO"];
    stationOrder = json["properties"]["ORDRE_ESTACIO"];
  }
}
