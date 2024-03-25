import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String LocationMessage = 'Home Location';

  late String lat;
  late String long;

  Future _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location Services disabled');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permission denied');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocationMessage,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                
                _getCurrentLocation().then((value) {
                  lat = '${value.latitude}';
                  long = '${value.longitude}';
                  setState(() {
                    LocationMessage = 'Latitude: $lat, Longitude: $long';
                  });
                });
              },
              child: const Text('Get Home location'),
            ),
          ],
        ),
      ),
    );
  }
}
