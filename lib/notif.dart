import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notif {
  static Future initialize(FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidinitialize = new AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettings = new InitializationSettings(android: androidinitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
  static Future showTextNotification ({id = 0, required String tittle, required String body, var payload,  required flutterLocalNotificationsPlugin}) async {
    var androidDetails = new AndroidNotificationDetails("Channel ID", "Channel Name",
    playSound: true,
      sound: RawResourceAndroidNotificationSound('notifikasi'),
      importance: Importance.max,
      priority: Priority.high,);
    var generalNotificationDetails = new NotificationDetails(android: androidDetails);
    await flutterLocalNotificationsPlugin.show(id, tittle, body, generalNotificationDetails, payload: payload);
  }
}