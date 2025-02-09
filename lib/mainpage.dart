import 'package:easyride/easyride.dart';
import 'package:easyride/maps.dart';
import 'package:easyride/pages/loginuser.dart';
import 'package:easyride/pages/plandestination.dart';
import 'package:easyride/pages/trackdelay.dart';
import 'package:easyride/pages/transportavilability.dart';
import 'package:easyride/searchlocation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "EASY RIDE",
          style: GoogleFonts.rufina(
            fontSize: 40,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        elevation: 10,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SearchLocation(),
            )),
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 7,
            )
          ],
        ),
        width: 50,
        height: 50,
        child: GestureDetector(
          onTap: () async {
            EasyRide.instance.controller!.enableTracking();
          },
          child: Icon(
            Icons.my_location,
            color: Colors.white,
          ),
        ),
      ),
      onDrawerChanged: (isOpened) {
        EasyRide.instance.mainPageController!.clear();
        EasyRide.instance.mainPageTextFieldFocusNode!.unfocus();
      },
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        width: MediaQuery.of(context).size.width / 2,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25, top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: MediaQuery.of(context).size.shortestSide * 0.3,
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.longestSide * 0.15),
                child: SizedBox(
                  height: MediaQuery.of(context).size.longestSide * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PlanDestination(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          elevation: WidgetStatePropertyAll(5),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                17,
                              ),
                            ),
                          ),
                          maximumSize: WidgetStatePropertyAll(
                            Size(
                              MediaQuery.of(context).size.shortestSide * 0.45,
                              MediaQuery.of(context).size.shortestSide * 0.15,
                            ),
                          ),
                          minimumSize: WidgetStatePropertyAll(
                            Size(
                              MediaQuery.of(context).size.shortestSide * 0.45,
                              MediaQuery.of(context).size.shortestSide * 0.15,
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.tertiary),
                          shadowColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.secondary),
                        ),
                        child: Text(
                          "Plan Destinations",
                          style: GoogleFonts.oxygen(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.secondary),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          elevation: WidgetStatePropertyAll(5),
                          maximumSize: WidgetStatePropertyAll(
                            Size(
                              MediaQuery.of(context).size.shortestSide * 0.45,
                              MediaQuery.of(context).size.shortestSide * 0.15,
                            ),
                          ),
                          minimumSize: WidgetStatePropertyAll(
                            Size(
                              MediaQuery.of(context).size.shortestSide * 0.45,
                              MediaQuery.of(context).size.shortestSide * 0.15,
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.tertiary),
                          shadowColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.secondary),
                        ),
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TrackDelay(),
                        )),
                        child: Text(
                          "Track Delay",
                          style: GoogleFonts.oxygen(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          elevation: WidgetStatePropertyAll(5),
                          maximumSize: WidgetStatePropertyAll(
                            Size(
                              MediaQuery.of(context).size.shortestSide * 0.45,
                              MediaQuery.of(context).size.shortestSide * 0.15,
                            ),
                          ),
                          minimumSize: WidgetStatePropertyAll(
                            Size(
                              MediaQuery.of(context).size.shortestSide * 0.45,
                              MediaQuery.of(context).size.shortestSide * 0.15,
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.tertiary),
                          shadowColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.secondary),
                        ),
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TransportAvilability(),
                        )),
                        child: Text(
                          "Transport avilability",
                          style: GoogleFonts.oxygen(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Maps(),
    );
  }
}
