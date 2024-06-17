import 'package:flutter/material.dart';

class NotificationEntry extends StatelessWidget {
  final String message;

  const NotificationEntry({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notification_important),
      title: Text(message),
    );
  }
}
