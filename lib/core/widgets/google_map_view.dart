import 'dart:async';
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
  GoogleMapController? _mapController;
  String? _locationError;
  static const Duration _locationTimeout = Duration(seconds: 12);

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), _getDeviceLocation);
  }

  @override
  void dispose() {
    super.dispose();
    _mapController?.dispose();
  }

  Future<void> _getDeviceLocation() async {
    final location = Location();

    try {
      // Check service
      var serviceEnabled = await location.serviceEnabled();
      debugPrint('Location service enabled: $serviceEnabled');
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          setState(() => _locationError = 'Location service not enabled');
          return;
        }
      }

      // Check permission
      var permissionGranted = await location.hasPermission();
      debugPrint('Initial location permission: $permissionGranted');
      if (permissionGranted == PermissionStatus.denied ||
          permissionGranted == PermissionStatus.deniedForever) {
        permissionGranted = await location.requestPermission();
        debugPrint('Requested location permission: $permissionGranted');
        if (permissionGranted != PermissionStatus.granted) {
          setState(() => _locationError = 'Location permission denied');
          return;
        }
      }

      // Get location
      final locationData = await location.getLocation().timeout(
        _locationTimeout,
      );
      debugPrint(
        'Fetched coordinates: ${locationData.latitude}, ${locationData.longitude}',
      );
      if (locationData.latitude == null || locationData.longitude == null) {
        setState(() => _locationError = 'Unable to fetch coordinates');
        return;
      }

      setState(() {
        _currentPosition = LatLng(
          locationData.latitude!,
          locationData.longitude!,
        );
        _locationError = null;
      });
    } catch (e) {
      final message =
          e is TimeoutException
              ? 'Timed out getting location. Check service and permissions.'
              : 'Failed to get location: $e';
      setState(() => _locationError = message);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_currentPosition == null) {
      if (_locationError != null) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_locationError!),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _getDeviceLocation,
                child: const Text('Retry'),
              ),
            ],
          ),
        );
      }
      return const Center(child: CircularProgressIndicator());
    }
    return Stack(
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
        if (widget.child != null) widget.child!,
      ],
    );
  }
}
