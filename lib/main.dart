import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_in_flutter/login_signup/first_page.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);
  //MaterialApp(
  //debugShowCheckedModeBanner: false;
  //)
  @override
  _MainState createState() => _MainState();
}
//my api key is AIzaSyBC1EPXfpwVZr8XTP90xB5LN51w98qYdAM
class _MainState extends State<Main> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.blue[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
           //edit from here

      ),
    )
    );}
}