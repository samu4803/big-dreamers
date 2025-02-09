import 'package:flutter/material.dart';
import 'package:flutter_nominatim/flutter_nominatim.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class EasyRide {
  MapController? controller;
  OSMOption? osmOption;
  Nominatim? nominatimi;
  TextEditingController? mainPageController;
  FocusNode? mainPageTextFieldFocusNode;
  Map<String, dynamic>? impLoc;
  EasyRide._();
  static final EasyRide instance = EasyRide._();
  static initialize() async {
    instance.impLoc = {
      "pesUniversity": {
        "lat": "12.935068198222217",
        "lon": "77.53603735961094"
      },
      "bogadi": {"lat": "12.305938648427588", "lon": "76.59761448623767"},
      "majestic": {"lat": "13.053923624372098", "lon": "80.20511420992881"},
      "yashwantpura": {"lat": "13.028257887994767", "lon": "77.53927493142874"},
      "kengeri": {"lat": "12.903744069213392", "lon": "77.47081861370692"},
      "kuvempunagara": {"lat": "12.285210506037398", "lon": "76.6257561855097"},
      "vijayanagara": {"lat": "12.633731929653866", "lon": "76.52246507902066"},
      "yelahanka": {"lat": "13.131350901082047", "lon": "77.6021537179604"},
      "jainagara": {"lat": "13.0351645239521", "lon": "77.59486972069386"}
    };
    instance.mainPageController = TextEditingController();
    instance.mainPageTextFieldFocusNode = FocusNode();
    instance.nominatimi = Nominatim.instance;
    instance.controller = MapController(
      initPosition: GeoPoint(latitude: 0, longitude: 0),
    );
    instance.osmOption = OSMOption(
      userTrackingOption: UserTrackingOption(
        enableTracking: true,
      ),
      zoomOption: ZoomOption(initZoom: 17, maxZoomLevel: 18),
      userLocationMarker: UserLocationMaker(
        personMarker: MarkerIcon(
          assetMarker: AssetMarker(
            image: AssetImage("assets/images/usericon.png"),
          ),
        ),
        directionArrowMarker: MarkerIcon(
          icon: Icon(Icons.abc),
        ),
      ),
    );
  }
}
