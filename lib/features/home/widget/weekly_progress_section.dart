import 'package:flutter/material.dart';
import 'package:nutri_meter/features/home/widget/nutrient_progress_bar.dart';

class WeeklyProgressSection extends StatelessWidget {
  const WeeklyProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Weekly Progress',
            style: Theme.of(context).textTheme.headlineSmall),
        const LinearProgressIndicator(value: 0.6, color: Colors.green),
        const SizedBox(height: 8),
        const NutrientProgressBar(
            nutrient: 'Carbs', value: 0.5, color: Colors.blue),
        const NutrientProgressBar(
            nutrient: 'Protein', value: 0.7, color: Colors.red),
        const NutrientProgressBar(
            nutrient: 'Fat', value: 0.3, color: Colors.yellow),
      ],
    );
  }
}
