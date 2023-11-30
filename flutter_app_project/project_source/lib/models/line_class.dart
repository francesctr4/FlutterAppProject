class Line {
  String? lineName;
  String? firstStation;
  String? lastStation;

  Line.fromJson(Map<String, dynamic> json) {
    lineName = json["features"]["properties"]["NOM_LINIA"];
    firstStation = json["features"]["properties"]["ORIGEN_LINIA"];
    lastStation = json["features"]["properties"]["DESTI_LINIA"];
  }
}
