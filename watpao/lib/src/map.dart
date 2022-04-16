import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),
    body: FlutterMap(
      options: MapOptions(
        center: latLng.LatLng(13.793406, 100.322514),
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
              point: latLng.LatLng(13.793406, 100.322514),
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
}
