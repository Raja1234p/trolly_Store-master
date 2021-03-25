import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAddress();

  }
  var add1='';
  var add2='';
double lat = 13.02256;
  double long = 77.699431;


  getAddress()async{
    final coordinates = Coordinates(lat, long);
    var address = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    setState(() {
      add1=address.first.addressLine;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(add1)),
    );
  }
}
