import 'package:freezed_annotation/freezed_annotation.dart';

part 'poster_notification.freezed.dart';

part 'poster_notification.g.dart';

@freezed
class Notification with _$Notification {
  factory Notification({
    String? title,
    String? body,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}