import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:watpao/src/cover.dart';
import 'package:watpao/src/home.dart';
import 'package:watpao/src/map.dart';
import 'package:watpao/src/aboutus.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Watpao',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        '/': (context) => const CoverPage(),
        '/homePage': (context) => const HomePage(),
        '/mapPage': (context) => const MapPage(),
        '/aboutusPage': (context) => const AboutusPage(),
      },
    ),
  );
}
