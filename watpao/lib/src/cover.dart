import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watpao/src/home.dart';
import 'package:watpao/src/aboutus.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/watpao_cover.png'),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const Text('Get started',
                    style: TextStyle(color: Colors.white)),
                onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const HomePage();
              })),
            },
                style: ElevatedButton.styleFrom(primary: Colors.red[900]),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text('About us',
                    style: TextStyle(color: Colors.white)),
                onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AboutusPage();
              })),
            },
                style: ElevatedButton.styleFrom(primary: Colors.red[900]),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text('Your location', style: TextStyle(color: Colors.white)),
                onPressed: () async {
                  LocationPermission permission;
                  permission = await Geolocator.requestPermission();
                  final location = await Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.high,
                  );

                  String mapUrl =
                      "https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}";

                  await canLaunch(mapUrl)
                      ? await launch(mapUrl)
                      : throw ("Couldn't open google maps");
                },
                style: ElevatedButton.styleFrom(primary: Colors.red[900]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
