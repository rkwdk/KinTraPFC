// Flutter imports:
import 'package:flutter/material.dart';

class MealLogEntry extends StatelessWidget {

  const MealLogEntry(
      {super.key,
      required this.timeOfDay,
      required this.description,
      required this.calories,});
  final String timeOfDay;
  final String description;
  final int calories;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.fastfood),
      title: Text(description),
      subtitle: Text('$calories kcal'),
      trailing: Text(timeOfDay),
    );
  }
}
