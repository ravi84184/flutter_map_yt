import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class OpenMapScreen extends StatefulWidget {
  const OpenMapScreen({super.key});

  @override
  State<OpenMapScreen> createState() => _OpenMapScreenState();
}

class _OpenMapScreenState extends State<OpenMapScreen> {
  // Define Map controller
  late MapController mapController;
  @override
  void initState() {
    // TODO: implement initState

    mapController = MapController(
      // add lat long for init position
      initPosition: GeoPoint(latitude: 23.033863, longitude: 72.585022),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
      ), // add map widget
      body: OSMFlutter(
        controller: mapController, // set zoom
        initZoom: 12,
      ),
    );
  }
}
