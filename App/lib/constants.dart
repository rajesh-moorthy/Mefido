class Constants {
  static const String appName = 'Mefido';
  static const String logoTag = 'near.huscarl.loginsample.logo';
  static const String titleTag = 'near.huscarl.loginsample.title';
}

class APIUrls {
  static const String getTowns = 'http://mefido.giftwinner.co.in/api/getTowns';
  static const String getCountries =
      'http://mefido.giftwinner.co.in/api/getcountries';
  static const String getStatesbyCountry =
      'http://mefido.giftwinner.co.in/api/GetActiveStatesByCountry/';
  static const String getTownsbyState =
      'http://mefido.giftwinner.co.in/api/GetActiveTownsByState/';

// for Local Services Access
  // static const String getTowns = 'http://10.0.2.2:8081/api/getTowns';
  // static const String getCountries =
  //     'http://192.168.241.170/MefidoServices/api/getcountries';
  // static const String getStatesbyCountry =
  //     'http://10.0.2.2/MefidoServices/api/GetActiveStatesByCountry/';
  // static const String getTownsbyState =
  //     'http://10.0.2.2/MefidoServices/api/GetActiveTownsByState/';
}
