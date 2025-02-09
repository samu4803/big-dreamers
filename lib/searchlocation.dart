import 'package:easyride/easyride.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({super.key});

  @override
  State<SearchLocation> createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  bool searchingLoc = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextField(
                    controller: EasyRide.instance.mainPageController!,
                    focusNode: EasyRide.instance.mainPageTextFieldFocusNode!,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter location",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            100,
                          ),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) async {
                      // come here
                      // final longlat = await EasyRide.instance.nominatimi!
                      // .getLatLngFromAddress(value);
                      await EasyRide.instance.controller!.moveTo(
                        GeoPoint(
                            latitude: EasyRide.instance.impLoc![value]["lat"],
                            longitude: EasyRide.instance.impLoc![value]["lon"]),
                      );
                      if (mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                    onChanged: (query) async {
                      // come here
                      setState(() {
                        searchingLoc = true;
                      });

                      await EasyRide.instance.nominatimi!.search(query);

                      setState(() {
                        searchingLoc = false;
                      });
                    },
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                searchingLoc
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (var i in EasyRide.instance.impLoc!.keys)
                            GestureDetector(
                              onTap: () async {
                                await EasyRide.instance.controller!.moveTo(
                                  GeoPoint(
                                      latitude: EasyRide.instance.impLoc![i]
                                          ["lat"],
                                      longitude: EasyRide.instance.impLoc![i]
                                          ["lon"]),
                                );
                                if (mounted) {
                                  Navigator.of(context).pop();
                                }
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: Text(
                                  i,
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ),
                            )
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
