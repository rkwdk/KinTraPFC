// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kin_tra_pfc/src/features/home/widget/notification_entry.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Notifications', style: Theme.of(context).textTheme.headlineSmall),
        const NotificationEntry(
          message: 'You exceeded your calorie goal today!',
        ),
        const NotificationEntry(message: 'Don\'t forget to log your lunch.'),
      ],
    );
  }
}
