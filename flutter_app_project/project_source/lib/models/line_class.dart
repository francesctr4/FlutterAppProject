class Line {
  String? lineName;
  int? lineCode;
  String? firstStation;
  String? lastStation;

  // Custom getter to get the lineNumber from lineName
  int get lineNumber {
    // Extract numeric part using regular expression
    RegExp regex = RegExp(r'\d+');
    RegExpMatch? match =
        regex.firstMatch(lineName!) ?? RegExp(r'[^a-zA-Z0-9]').firstMatch('0');

    // If there's no numeric part, return a very large number to place it at the end
    String numericPart = match?.group(0) ?? '99';

    // Parse the numeric part to an integer
    return int.tryParse(numericPart) ?? 0;
  }

  Line.fromJson(Map<String, dynamic> json) {
    lineName = json["properties"]["NOM_LINIA"];
    lineCode = json["properties"]["CODI_LINIA"];
    firstStation = json["properties"]["ORIGEN_LINIA"];
    lastStation = json["properties"]["DESTI_LINIA"];
  }
}
