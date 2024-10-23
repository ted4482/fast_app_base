import 'package:fast_app_base/screen/notification/vo/vo_notification_type.dart';

class TossNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  bool isRead;

  TossNotification(
    this.type,
    this.description,
    this.time, {
    this.isRead = false,
  });
}
