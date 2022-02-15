import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:watpao/src/home.dart';
import 'package:watpao/src/map.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Watpao',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/mapPage': (context) => const MapPage(),
      },
    ),
  );
}

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),
    body: FlutterMap(
      options: MapOptions(
        center: latLng.LatLng(13.736717, 100.523186),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://api.mapbox.com/styles/v1/shinozukayuki/ckzo4pism002215np4tzhaz2c/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2hpbm96dWtheXVraSIsImEiOiJja3pvNGxqdDUyejF1MnZuMmJsNjIweGV2In0.ZsFS7t6995sYrgryjT7kEg",
          additionalOptions: {
            'accessToken': 'pk.eyJ1Ijoic2hpbm96dWtheXVraSIsImEiOiJja3pvNGxqdDUyejF1MnZuMmJsNjIweGV2In0.ZsFS7t6995sYrgryjT7kEg',
            'id': 'mapbox.mapbox-streets-v8'
          }
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: latLng.LatLng(13.741163702, 100.48949),
              builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      color: Colors.red,
                      iconSize:45.0,
                      onPressed: (){
                        print('Marked');
                      },
                    ),
                  )
                  
            )
          ],
        ),
      ],
    ));
  }
}*/
