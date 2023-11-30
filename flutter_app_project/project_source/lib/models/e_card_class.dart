class Ecard {
  // Front face
  String name;
  String firstSurname;
  String secondSurname;
  // Back face
  bool state;
  String profile;
  String expiry;
  String uid;
  // Screen
  String titleCharged;
  String validity;

  Ecard({
    // Front face
    required this.name,
    required this.firstSurname,
    required this.secondSurname,
    // Back face
    required this.state,
    required this.profile,
    required this.expiry,
    required this.uid,
    // Screen
    required this.titleCharged,
    required this.validity,
  });
}
