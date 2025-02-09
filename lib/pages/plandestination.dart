import 'package:flutter/material.dart';

class PlanDestination extends StatefulWidget {
  const PlanDestination({super.key});

  @override
  State<PlanDestination> createState() => _PlanDestinationState();
}

class _PlanDestinationState extends State<PlanDestination> {
  int destinationCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "Plan Destination",
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
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "From:",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: Text(
                      "Destination Places:",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(color: Colors.white, blurRadius: 5),
                        ],
                      ),
                      width: MediaQuery.of(context).size.shortestSide * 0.15,
                      height: MediaQuery.of(context).size.shortestSide * 0.15,
                      child: GestureDetector(
                        onTap: () {
                          destinationCount += 1;
                          setState(() {});
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 2,
                      ),
                      top: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 2,
                      ),
                    ),
                  ),
                  height: MediaQuery.of(context).size.longestSide * 0.45,
                  child: ListView(
                    children: [
                      for (int i = 0; i < destinationCount; i++)
                        ListTile(
                          title: TextFormField(
                            style: TextStyle(),
                            decoration: InputDecoration(
                              hintText: "to:",
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            iconSize: 37,
                            onPressed: () => setState(() {
                              destinationCount -= 1;
                            }),
                            icon: Icon(
                              Icons.dangerous,
                              color: Colors.red,
                            ),
                          ),
                        ),
                    ],
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
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Search"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
