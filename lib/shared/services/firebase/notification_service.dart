import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:kansler/shared/services/logger/logger_service.dart';

class NotificationService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static Future<void> init() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log.d('Уведомления разрешены');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      log.d('Уведомления временно разрешены');
    } else {
      log.d('Уведомления не разрешены');
    }

    // Настройка обработчика фоновых сообщений
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Обработка сообщений при открытом приложении
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log.d(
          'Получено сообщение в фореграунде: ${message.notification?.title}');

      RemoteNotification? notification = message.notification;

      showNotification(
        id: notification.hashCode,
        title: notification?.title ?? '',
        body: notification?.body ?? '',
      );
    });
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: (id, title, body, payload) {},
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  // Получение токена для уведомлений
  static Future<String?> getToken() async {
    String? token;

    try {
      token = await _firebaseMessaging.getToken();
    } catch (e) {
      log.e('Ошибка при получении токена: $e');
    }
    return token;
  }

  // Фоновая обработка сообщений
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    log.d("Фоновое сообщение получено: ${message.notification?.title}");
  }

  static Future<void> showNotification({
    required int id,
    required String title,
    required String body,
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your_channel_id',
      'Your Channel Name',
      channelDescription: 'Your Channel description', // Описание канала
      importance: Importance.max,
      priority: Priority.high,
      showWhen: false,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      platformChannelSpecifics,
    );
  }
}
