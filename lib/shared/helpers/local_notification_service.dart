// import 'dart:convert';
// import 'dart:developer';
// // import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flowcy_customer/shared/helpers/utils.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter_native_timezone/flutter_native_timezone.dart';
// import 'package:timezone/data/latest_all.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// class LocalNotificationService {
//   static final FlutterLocalNotificationsPlugin _notificationPlugin =
//       FlutterLocalNotificationsPlugin();
//   static void initialize() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings("@mipmap/ic_launcher");

//     // =======================
//     // TODO ADD IOS CONFIG HERE
//     // =======================

//     final InitializationSettings initializationSettings =
//         InitializationSettings(android: initializationSettingsAndroid);
//     await _notificationPlugin.initialize(
//       initializationSettings,
//       onSelectNotification: (payload) {
//         log(payload.toString());
//         try {
//           if (payload != null) {
//             var res = json.decode(payload);
//             handleNotificationRoute(
//                 res['screen'],
//                 int.parse(res['id']),
//                 secondId: res['idPackage'] != null
//                     ? int.parse(res['idPackage'])
//                     : null
//             );
//           }
//         } catch (e) {
//           log(e.toString());
//         }
//       },
//     );

//     final NotificationAppLaunchDetails? notificationAppLaunchDetails =
//         await _notificationPlugin.getNotificationAppLaunchDetails();
//     if(notificationAppLaunchDetails?.didNotificationLaunchApp ?? false){
//       var selectedNotificationPayload = notificationAppLaunchDetails!.payload;
//       log("From local notif : " + selectedNotificationPayload.toString());
//     }
//   }

//   static void displayNotification(RemoteMessage message) async {
//     try {
//       final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
//       const AndroidNotificationDetails androidPlatformChannelSpecifics =
//           AndroidNotificationDetails(
//         'flowcy',
//         'flowcy',
//         channelDescription: 'flowcy',
//         importance: Importance.max,
//         priority: Priority.high,
//       );
//       const NotificationDetails platformChannelSpecifics =
//           NotificationDetails(android: androidPlatformChannelSpecifics);
//       await _notificationPlugin.show(
//         id,
//         message.notification?.title,
//         message.notification?.body,
//         platformChannelSpecifics,
//         payload: json.encode(message.data),
//       );
//     } catch (e) {
//       // print(e.toString());
//     }
//   }

//   static void addScheduleNotification({
//     required int id,
//     required String title,
//     required String body,
//     required DateTime schedule,
//   }) async {
//     // tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5))
//     String timeZoneName = 'Unknown';
//     tz.initializeTimeZones();
//     timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
//     tz.setLocalLocation(tz.getLocation(timeZoneName));
//     await _notificationPlugin.zonedSchedule(
//       id,
//       title,
//       body,
//       // schedule,
//       tz.TZDateTime.from(schedule, tz.local),
//       const NotificationDetails(
//         android: AndroidNotificationDetails(
//           'flowcy',
//           'flowcy',
//           channelDescription: 'flowcy',
//           importance: Importance.max,
//           priority: Priority.high,
//         ),
//       ),
//       androidAllowWhileIdle: true,
//       uiLocalNotificationDateInterpretation:
//       UILocalNotificationDateInterpretation.absoluteTime,
//     );
//   }

//   static void updateScheduleNotification({
//     required int id,
//     required String title,
//     required String body,
//     required DateTime schedule,
//   }) async {
//     await _notificationPlugin.cancel(id);
//     // tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5))
//     String timeZoneName = 'Unknown';
//     tz.initializeTimeZones();
//     timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
//     tz.setLocalLocation(tz.getLocation(timeZoneName));
//     await _notificationPlugin.zonedSchedule(
//       id,
//       title,
//       body,
//       // schedule,
//       tz.TZDateTime.from(schedule, tz.local),
//       const NotificationDetails(
//         android: AndroidNotificationDetails(
//           'flowcy',
//           'flowcy',
//           channelDescription: 'flowcy',
//           importance: Importance.max,
//           priority: Priority.high,
//         ),
//       ),
//       androidAllowWhileIdle: true,
//       uiLocalNotificationDateInterpretation:
//       UILocalNotificationDateInterpretation.absoluteTime,
//     );
//   }

//   static void removeSingleScheduleNotification(int id) async {
//     await _notificationPlugin.cancel(id);
//   }

//   static void removeAllScheduleNotification() async {
//     await _notificationPlugin.cancelAll();
//   }
// }
