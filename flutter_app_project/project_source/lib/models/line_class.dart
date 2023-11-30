class Line {
  String lineName;
  String firstStation, lastStation;

  Line.fromJson(Map<String, dynamic> json)
      : lineName = json["properties"]["NOM_LINIA"],
        firstStation = json["properties"]["ORIGEN_LINIA"],
        lastStation = json["properties"]["DESTI_LINIA"];
}
