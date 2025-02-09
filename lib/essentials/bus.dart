import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Bus extends StatelessWidget {
  const Bus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: FutureBuilder(
        future: Future(
          () async {
            var a = "hello";
            var b = await http.get(
                Uri.parse(
                    "https://booking-com15.p.rapidapi.com/api/v1/hotels/searchDestination?query=mysore"),
                headers: {
                  'x-rapidapi-host': 'booking-com15.p.rapidapi.com',
                  'x-rapidapi-key':
                      '27ad4e2dbbmsh6d8a1d908b55044p13ba21jsna9b045e4c283',
                });
            var c = Utf8Decoder().convert(b.bodyBytes);
            a = c;
            return b.body;
          },
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Text(
                snapshot.data.toString(),
                style: TextStyle(color: Colors.white),
              ),
            );
          }
          return Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ));
        },
      ),
    );
  }
}
