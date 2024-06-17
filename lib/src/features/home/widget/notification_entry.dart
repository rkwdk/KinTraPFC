import 'package:flutter/material.dart';

class NotificationEntry extends StatelessWidget {

  const NotificationEntry({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notification_important),
      title: Text(message),
    );
  }
}
