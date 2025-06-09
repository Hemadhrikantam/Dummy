import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GoogleMapView extends StatefulWidget {
  const GoogleMapView({super.key, this.child});
  final Widget? child;
  @override
  State<StatefulWidget> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  LatLng? _currentPosition;
  late GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
    _getDeviceLocation();
  }
  @override
  void dispose() {
    super.dispose();
    _mapController.dispose();
  }

  

  Future<void> _getDeviceLocation() async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    // Check service
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) return;
    }

    // Check permission
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) return;
    }

    // Get location
    _locationData = await location.getLocation();

    setState(() {
      _currentPosition = LatLng(
        _locationData.latitude!,
        _locationData.longitude!,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return _currentPosition == null
        ? Center(child: CircularProgressIndicator())
        : Stack(
          alignment: Alignment.topCenter,
          children: [
            GoogleMap(
              onMapCreated: (controller) {
                _mapController = controller;
              },
              initialCameraPosition: CameraPosition(
                target: _currentPosition!,
                zoom: 15,
              ),
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
            ),
            // UI above map
            if(widget.child!=null) widget.child!
          ],
        );
  }
}
