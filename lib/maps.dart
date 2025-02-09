import 'package:easyride/easyride.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OSMFlutter(
          controller: EasyRide.instance.controller!,
          osmOption: EasyRide.instance.osmOption!,
        ),
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //   child: TextField(
        //     controller: EasyRide.instance.mainPageController!,
        //     focusNode: EasyRide.instance.mainPageTextFieldFocusNode!,
        //     decoration: InputDecoration(
        //       fillColor: Colors.white,
        //       filled: true,
        //       hintText: "Enter location",
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.all(
        //           Radius.circular(
        //             100,
        //           ),
        //         ),
        //       ),
        //     ),
        //     keyboardType: TextInputType.text,
        //     textInputAction: TextInputAction.search,
        //     onSubmitted: (value) async {
        //       // come here
        //       final longlat = await EasyRide.instance.nominatimi!
        //           .getLatLngFromAddress(value);
        //       await EasyRide.instance.controller!.moveTo(
        //         GeoPoint(
        //             latitude: longlat.latitude, longitude: longlat.longitude),
        //       );
        //     },
        //     onChanged: (query) {
        //       // come here
        //       if (query.length >= 3) {
        //         EasyRide.instance.nominatimi!.search(query).then((results) {});
        //       }
        //     },
        //     style: TextStyle(
        //       fontSize: 15,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
