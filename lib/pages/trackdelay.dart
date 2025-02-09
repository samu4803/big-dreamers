import 'package:flutter/material.dart';

class TrackDelay extends StatelessWidget {
  const TrackDelay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Track Delay",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        elevation: 10,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 40, color: Colors.black),
      ),
      body: Form(
        child: Container(
          color: Theme.of(context).colorScheme.tertiary,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "From:",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "To:",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
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
                  onPressed: () {},
                  child: Text("Track"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
