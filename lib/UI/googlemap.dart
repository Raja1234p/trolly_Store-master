import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_map_place_v2/search_map_place_v2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickLocation extends StatefulWidget {
  @override
  _PickLocationState createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocation> {
  Completer<GoogleMapController> _mapController = Completer();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchMapPlaceWidget(apiKey: 'AIzaSyCVEw8VKyy9ustmvw85CFrtg5BgJm1_R1U',
          onSearch: (Place place) async {


            try{
              final geolocation = await place.geolocation;
              final GoogleMapController controller = await _mapController.future;
              controller.animateCamera(CameraUpdate.newLatLng(geolocation.coordinates));
              controller.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
              print(geolocation);
            }catch(e){
              print(e);
            }
          },
        ),
      ),
    );
  }
}
