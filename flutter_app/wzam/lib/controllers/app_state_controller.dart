import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/services/push_notification_service.dart';

class AppStateController extends GetxController with WidgetsBindingObserver {
  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this); // Add observer for app lifecycle
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this); // Remove observer when done
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      // App is in the foreground
      onAppResumed();
    } else if (state == AppLifecycleState.paused) {
      // App is in the background
      onAppPaused();
    }
  }

  void onAppResumed() {
    print("App is in the foreground");
    // Add your logic here (e.g., restart location updates)
    //PushNotificationService.cancelAll();
    PushNotificationService pushNotificationService = Get.find<PushNotificationService>();
    pushNotificationService.stopPersistentLocationNotification();
    pushNotificationService.locationUpdateNotificationLive.value = false;
  }

  void onAppPaused() {
    print("App is in the background");
    //LocationService locationService = Get.find<LocationService>();
    //locationService.enableForegroundService();
    PushNotificationService pushNotificationService = Get.find<PushNotificationService>();
    pushNotificationService.showLocationNotification(title: "Device Location is being used in a Live Report", payload: "Live Report", delaySeconds: 5);
    print("went here");
    
    // Add your logic here (e.g., stop location updates)
  }
}