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
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/watpao_cover.png'),
              const SizedBox(
                height: 20.00,
                width: 300.00,
                child: Divider(color: Colors.white,),
              ),
              ElevatedButton(
                child: const Text('Get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic
                      ),
                    ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  onPrimary: Colors.white,
                  shadowColor: Colors.red,
                  elevation: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                ),
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const HomePage();
                })),
                },
              ),
              const SizedBox(
                height: 10,
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
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[600],
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
              
            //   ElevatedButton(
            //     child: const Text('About us',
            //         style: TextStyle(color: Colors.white)),
            //     onPressed: () => {
            //       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //       return const AboutusPage();
            //     })),
            //  },
            //     style: ElevatedButton.styleFrom(
            //       primary: Colors.red[300],
            //       padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 10),
            //     ),
            //   ),
            ],
          ),
        ),
      ),
    );
  }
}
