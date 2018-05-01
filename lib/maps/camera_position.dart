import 'package:googlemapflutter/maps/location.dart';

class CameraPosition {
  
   Location center;
   double zoom;

   CameraPosition(this.center, this.zoom){
     
   }

  factory CameraPosition.fromMap(Map map) {
    return new CameraPosition(new Location.fromMap(map), map["zoom"]);
  }

  Map toMap() {
    Map map = center.toMap();
    map["zoom"] = zoom;
    return map;
  }
}
