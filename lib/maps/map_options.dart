import 'package:googlemapflutter/maps/camera_position.dart';
import 'package:googlemapflutter/maps//location.dart';
import 'package:googlemapflutter/maps//map_view_type.dart';

class MapOptions {
  final bool showUserLocation;
  final CameraPosition initialCameraPosition;
  final String title;
  static const Location location = Location(45.5329661, -122.7059508);
  MapViewType mapViewType;

  MapOptions(
      {this.showUserLocation: false,
      this.title: "",
      this.mapViewType: MapViewType.normal});

  Map<String, dynamic> toMap() {
    return {
      "showUserLocation": showUserLocation,
      "title": title,
      "mapViewType": getMapTypeName(mapViewType)
    };
  }

  String getMapTypeName(MapViewType mapType) {
    String mapTypeName = "normal";
    switch (mapType) {
      case MapViewType.none:
        mapTypeName = "none";
        break;
      case MapViewType.satellite:
        mapTypeName = "satellite";
        break;
      case MapViewType.terrain:
        mapTypeName = "terrain";
        break;
      case MapViewType.hybrid:
        mapTypeName = "hybrid";
        break;
      case MapViewType.normal:
        mapTypeName = "normal";
        break;
    }
    return mapTypeName;
  }
}
