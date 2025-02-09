import 'package:easyride/essentials/bus.dart';
import 'package:easyride/essentials/plane.dart';
import 'package:easyride/essentials/train.dart';
import 'package:flutter/material.dart';

class TransportAvilability extends StatelessWidget {
  const TransportAvilability({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "Avilability",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          elevation: 10,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 40, color: Colors.black),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_bus,
                  color: Colors.white,
                ),
                height: 50,
                child: Text(
                  "Bus",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.train,
                  color: Colors.white,
                ),
                child: Text(
                  "Train",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.airplanemode_active,
                  color: Colors.white,
                ),
                child: Text(
                  "Plane",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Bus(),
            Train(),
            Plane(),
          ],
        ),
      ),
    );
  }
}
