import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class LocationService extends GetxService {
  // Static variables
  final Logger _logger = Logger();
  final LocationSettings _locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high, distanceFilter: 0);

  // Variables
  bool _serviceEnabled = false;
  bool _serviceMocked = false;
  late LocationPermission _permission;
  StreamSubscription<Position>? _positionStream;
  Rx<Position?> currentPosition = Rx<Position?>(null);

  // Location Stream
  final StreamController<Position> _locationController =
      StreamController<Position>.broadcast();
  Stream<Position> get locationStream => _locationController.stream;

  LocationService(
      {bool mocked = false,
      double latitude = 0,
      double longitude = 0,
      Position? mockedLocation}) {
    _start(mocked, latitude, longitude, mockedLocation);
  }

  void _start(bool mocked, double latitude, double longitude,
      Position? mockedLocation) async {
    _serviceMocked = mocked;
    // This method starts the location stream. This can be called multiple times, but only one stream will be active at a time.
    try {
      await requestPermission();
      if (await _isPermissionGranted() && _serviceEnabled) {
        _startLocationUpdates();
      }
    } catch (e) {
      _stopLocationUpdates();
      Get.dialog(
        AlertDialog(
          title: const Text('Location Permissions Not Allowed'),
          content: Text(
              'Location permissions are required to map work zones - without them, only report generation is supported. Error: $e'),
          actions: <Widget>[
            TextButton(
              child: const Text('Continue'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      );
    }
  }

  Future<bool> _isPermissionGranted({check = false}) async {
    if (check) _permission = await Geolocator.checkPermission();
    switch (_permission) {
      case LocationPermission.denied:
      case LocationPermission.deniedForever:
        return false;
      case LocationPermission.whileInUse:
      case LocationPermission.always:
        return true;
      case LocationPermission.unableToDetermine:
        return false;
    }
  }

  Future<bool> requestPermission() async {
    _serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!_serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      _logger.w("Location services are disabled");
      return Future.error('Location services are disabled.');
    }
    _permission = await Geolocator.checkPermission();
    if (_permission == LocationPermission.denied) {
      await Get.dialog(
        AlertDialog(
          title: const Text('Location Permissions'),
          content: const Text(
              'This application requires location permissions for mapping of work zones and designating locations of reports. Please grant location permissions to continue.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Continue'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      );
      _permission = await Geolocator.requestPermission();
      if (_permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        _logger.w("Location permissions are denied after requesting");
        return Future.error('Location permissions are denied');
      }
    }
    if (_permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      _logger.w(
          "Location permissions are permanently denied, we cannot request permissions.");
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return true;
  }

  void _startLocationUpdates() {
    _positionStream?.cancel();
    _positionStream =
        Geolocator.getPositionStream(locationSettings: _locationSettings)
            .listen(_onPositionUpdate);
  }

  void _onPositionUpdate(Position position) {
    _locationController.add(position);
    currentPosition.value = position;
  }

  void _stopLocationUpdates() {
    _positionStream?.cancel();
  }

  bool mockLocationActive() {
    return _serviceMocked;
  }

  Future<Position?> getCurrentLocation() async {
    if (!await _isPermissionGranted()) {
      _logger
          .w("Location permissions not granted, cannot get current location");
      return null;
    }
    return await Geolocator.getCurrentPosition();
  }

  bool areLocationUpdatesActive() {
    return _serviceEnabled && !(_positionStream?.isPaused ?? true);
  }
}
