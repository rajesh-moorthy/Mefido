class Town {
  final int cityId;
  final String countryCode;
  final String postalCode;
  final String village;
  final String state;
  final int stateID;
  final String cityName;
  final String town;
  final String cord1;
  final String cord2;
  final String active;

  Town.fromJSON(Map<String, dynamic> json)
      : cityId = json['cityId'],
        countryCode = json['countryCode'],
        postalCode = json['postalCode'],
        village = json['village'],
        state = json['state'],
        stateID = json['stateID'],
        cityName = json['cityName'],
        town = json['town'],
        cord1 = json['cord1'],
        cord2 = json['cord2'],
        active = json['active'];
}
