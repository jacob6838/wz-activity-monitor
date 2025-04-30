import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
//import 'package:flutter_background/flutter_background.dart';
//import 'package:flutter_background_service/flutter_background_service.dart';

class LocationService extends GetxService {
  // Static variables
  final Logger _logger = Logger();
  LocationSettings _locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high, distanceFilter: 0);

  // Variables
  bool _serviceEnabled = false;
  bool _serviceMocked = false;
  late LocationPermission _permission;
  late bool _backgroundPermission;
  //final service = FlutterBackgroundService();
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
        enableForegroundService();  //TODO: COME BACK TO THIS
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

  /*void _startLocationUpdates() async {
    _positionStream?.cancel();
    _positionStream =
        Geolocator.getPositionStream(locationSettings: _locationSettings)
            .listen(_onPositionUpdate);
  }*/

  void enableForegroundService() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      _locationSettings = AndroidSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 0,
          forceLocationManager: true,
          intervalDuration: const Duration(seconds: 3),
          foregroundNotificationConfig: const ForegroundNotificationConfig(
            notificationText:
            "Location Services are running",
            notificationTitle: "Location Services are running in the background",
            enableWakeLock: true,
            setOngoing: true,
            notificationIcon: const AndroidResource(
              name: 'ic_notification',
              defType: 'drawable',
            ),
          )
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.macOS) {
      _locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        activityType: ActivityType.fitness,
        distanceFilter: 0,
        pauseLocationUpdatesAutomatically: true,
        // Only set to true if our app will be started up in the background.
        showBackgroundLocationIndicator: false,
      );
    } else if (kIsWeb) {
      _locationSettings = WebSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
        maximumAge: Duration(minutes: 5),
      );
    } else {
      _locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );
    }
  }

  void _startLocationUpdates() async {
    // Start the location stream
    _positionStream?.cancel();
    _positionStream =
        Geolocator.getPositionStream(locationSettings: _locationSettings)
            .listen(_onPositionUpdate);
  }

  void _onPositionUpdate(Position position) {
    _locationController.add(position);
    currentPosition.value = position;
    print("New position: ${position.latitude}, ${position.longitude}");
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

/*class LocationService extends GetxService {
  // Static variables
  final Logger _logger = Logger();
  final LocationSettings _locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high, distanceFilter: 0);

  // Variables
  bool _serviceEnabled = false;
  bool _serviceMocked = false;
  late LocationPermission _permission;
  late bool _backgroundPermission;
  StreamSubscription<Position>? _positionStream;
  Rx<Position?> currentPosition = Rx<Position?>(null);

  // Location Stream
  final StreamController<Position> _locationController =
      StreamController<Position>.broadcast();
  Stream<Position> get locationStream => _locationController.stream;

  // Start Location Updates with Background Execution
  Future<void> startLocationUpdates() async {
  // Check location permissions
  _permission = await Geolocator.checkPermission();
  if (_permission == LocationPermission.denied ||
      _permission == LocationPermission.deniedForever) {
    _logger.w("Location permissions are denied. Requesting permissions...");
    _permission = await Geolocator.requestPermission();

    // If permissions are still denied, log and return
    if (_permission == LocationPermission.denied ||
        _permission == LocationPermission.deniedForever) {
      _logger.e("Location permissions are still denied after requesting.");
      return;
    }
  }

  // Start the Geolocator position stream
  _positionStream?.cancel();
  _positionStream =
      Geolocator.getPositionStream(locationSettings: _locationSettings)
          .listen((Position position) {
    currentPosition.value = position;
    _locationController.add(position); // Add position to the stream
    _logger.i("New position: ${position.latitude}, ${position.longitude}");
  });
}

  // Stop Location Updates
  Future<void> stopLocationUpdates() async {
    await _positionStream?.cancel();
    _positionStream = null;

    // Disable background execution
    if (await FlutterBackground.isBackgroundExecutionEnabled) {
      await FlutterBackground.disableBackgroundExecution();
    }
  }
}*/
