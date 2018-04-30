import 'dart:async';


import 'package:flutter/services.dart';


class MapView {
  MethodChannel _channel = const MethodChannel("com.apptreesoftware.map_view");
 
  StreamController<int> _toolbarActionStreamController =
      new StreamController.broadcast();
  StreamController<Null> _mapReadyStreamController =
      new StreamController.broadcast();


  MapView() {
    
  }

  static bool _apiKeySet = false;

  static void setApiKey(String apiKey) {
    MethodChannel c = const MethodChannel("com.apptreesoftware.map_view");
    c.invokeMethod('setApiKey', apiKey);
    _apiKeySet = true;
  }

  void dismiss() {
    _channel.invokeMethod('dismiss');
  }


}
