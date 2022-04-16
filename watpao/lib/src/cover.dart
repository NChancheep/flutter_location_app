import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

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
                onPressed: () {
                  Navigator.of(context).pushNamed('/homePage');
                },
                style: ElevatedButton.styleFrom(primary: Colors.red[900]),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text('About us',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/aboutusPage');
                },
                style: ElevatedButton.styleFrom(primary: Colors.red[900]),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text('Your location', style: TextStyle(color: Colors.white)),
                onPressed: () async {
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
