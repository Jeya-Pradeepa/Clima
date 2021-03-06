import 'package:geolocator/geolocator.dart';

class Location{
  double latitude;
  double longitude;

  Future <void> getCurrentLocation() async {
    try {
      Position position = await Geolocator().getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch (exception) {
      print(exception);
    }
  }
}

//double temperature = decodedData['main']['temp'];
//String cityName = decodedData['name'];
