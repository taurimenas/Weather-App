import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  double altitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
      altitude = position.altitude;
    } catch (exception) {
      print(exception);
    }
  }

//  double getLatitude() {
//    return latitude;
//  }
//
//  double getLongtitude() {
//    return longtitude;
//  }
}
