import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Plane extends StatefulWidget {
  const Plane({super.key});

  @override
  State<Plane> createState() => _PlaneState();
}

class _PlaneState extends State<Plane> {
  Map<String, dynamic>? traindata = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: FutureBuilder(
        future: Future(() async {}),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "From:",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "To:",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 100,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            maximumSize: WidgetStatePropertyAll(
                              Size(
                                MediaQuery.of(context).size.shortestSide * 0.3,
                                MediaQuery.of(context).size.shortestSide * 0.13,
                              ),
                            ),
                            minimumSize: WidgetStatePropertyAll(
                              Size(
                                MediaQuery.of(context).size.shortestSide * 0.3,
                                MediaQuery.of(context).size.shortestSide * 0.13,
                              ),
                            ),
                            textStyle: WidgetStatePropertyAll(
                              TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            elevation: WidgetStatePropertyAll(
                              7,
                            ),
                          ),
                          onPressed: () async {
                            final String response = await rootBundle
                                .loadString('assets/json/traincodes.json');
                            traindata = await json.decode(response);
                            setState(() {});
                          },
                          child: Text("Check"),
                        ),
                      ),
                      Text(
                        traindata.toString(),
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
