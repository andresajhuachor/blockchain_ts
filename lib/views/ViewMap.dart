// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCountry extends StatelessWidget {
  const MapCountry({super.key});
  final _initialCameraPosition = const CameraPosition(target: LatLng(0,0));
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Text('Localizacion'),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
      )
    );
  }
}