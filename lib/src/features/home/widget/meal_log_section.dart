// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kin_tra_pfc/src/features/home/widget/meal_log_entry.dart';

class MealLogSection extends StatelessWidget {
  const MealLogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Meal Log', style: Theme.of(context).textTheme.headlineSmall),
        const MealLogEntry(
          timeOfDay: 'Breakfast',
          description: 'Oatmeal with fruits',
          calories: 300,
        ),
        const MealLogEntry(
          timeOfDay: 'Lunch',
          description: 'Chicken salad',
          calories: 500,
        ),
        const MealLogEntry(
          timeOfDay: 'Dinner',
          description: 'Grilled fish with veggies',
          calories: 400,
        ),
        const MealLogEntry(
          timeOfDay: 'Snacks',
          description: 'Yogurt and nuts',
          calories: 200,
        ),
      ],
    );
  }
}
