import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wzam/services/location_service.dart';


class PushNotificationService extends GetxService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static final onClickNotification = BehaviorSubject<String>();

  RxBool locationUpdateNotificationLive = false.obs;

// on tap on any notification
  static void onNotificationTap(NotificationResponse notificationResponse) {
    onClickNotification.add(notificationResponse.payload!);
  }

// initialize the local notifications
  Future init() async {


    // initialize the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@drawable/ic_notification');
    final DarwinInitializationSettings initializationSettingsDarwin = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin,
        );

    // request notification permissions 
    _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!.requestNotificationsPermission();
  
    
    _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onNotificationTap,
        onDidReceiveBackgroundNotificationResponse: onNotificationTap);
  }

  // show a simple notification
  static Future showSimpleNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channel id simple', 'your channel name',
            channelDescription: 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');
    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await _flutterLocalNotificationsPlugin
        .show(0, title, body, notificationDetails, payload: payload);
  }

  // show location notification
  Future showLocationNotification({
    required String title,
    required String payload,
    required int delaySeconds,
  }) async {
    LocationService locationService = Get.find<LocationService>();
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channel id simple', 'your channel name',
            channelDescription: 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker',
        );
    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await _flutterLocalNotificationsPlugin
        .show(0, title, "Lat: ${locationService.currentPosition.value!.latitude}, Long: ${locationService.currentPosition.value!.longitude}", notificationDetails, payload: payload);
    locationUpdateNotificationLive.value = true;
    Future.delayed(Duration(seconds: delaySeconds), () {
      if (locationUpdateNotificationLive.value) {
        showPersistentLocationNotificationNoBeep(title: title, payload: payload, delaySeconds: delaySeconds);
      } 
    });
  }

  // show a persistent notification
  Future showPersistentLocationNotificationNoBeep({
    required String title,
    required String payload,
    required int delaySeconds,
  }) async {
    if (locationUpdateNotificationLive.value) {
      LocationService locationService = Get.find<LocationService>();
      const AndroidNotificationDetails androidNotificationDetails =
          AndroidNotificationDetails('channel id no sound', 'your channel name',
              channelDescription: 'your channel description',
              importance: Importance.low,
              priority: Priority.low,
              ticker: 'ticker',
              playSound: false,
              enableVibration: false,);
      const NotificationDetails notificationDetails =
          NotificationDetails(android: androidNotificationDetails);
      await _flutterLocalNotificationsPlugin
          .show(0, title, "Lat: ${locationService.currentPosition.value!.latitude}, Long: ${locationService.currentPosition.value!.longitude}", notificationDetails, payload: payload);

      Future.delayed(Duration(seconds: delaySeconds), () {
        showPersistentLocationNotificationNoBeep(title: title, payload: payload, delaySeconds: delaySeconds);
    });
    }
  }

  // close all the notifications available
  static Future cancelAll() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }

    // Stop the persistent notification
  Future<void> stopPersistentLocationNotification() async {
    await _flutterLocalNotificationsPlugin.cancel(0); // Cancel the notification with ID 0
  }
}