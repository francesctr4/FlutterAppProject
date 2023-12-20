class AllStation {
  String? stationName;
  String? lineName;

  AllStation.fromJson(Map<String, dynamic> json) {
    stationName = json["NOM_ESTACIO"];
    lineName = json["PICTO"];
  }
}