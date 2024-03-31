import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLong;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'napbox',
      home: MyHomePage(title: "home page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: latLong.LatLng(51.5, -0.09),
          zoom: 13.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/oswinalex/cluci9ynn01a301qs0bn86ljp/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoib3N3aW5hbGV4IiwiYSI6ImNsbmV1endyMjBsNDEycXRjNmt4M2I3a28ifQ.M0WoyDbplPY3KfJKN5HZVg",
            additionalOptions: {
              'accessToken': 'pk.eyJ1Ijoib3N3aW5hbGV4IiwiYSI6ImNsbmV1endyMjBsNDEycXRjNmt4M2I3a28ifQ.M0WoyDbplPY3KfJKN5HZVg',
              'id': 'mapbox.satellite'
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: latLong.LatLng(51.5, -0.09),
                builder: (ctx) => Container(
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
