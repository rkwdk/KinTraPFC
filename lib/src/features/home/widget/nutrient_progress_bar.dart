import 'package:flutter/material.dart';

class NutrientProgressBar extends StatelessWidget {
  final String nutrient;
  final double value;
  final Color color;

  const NutrientProgressBar(
      {super.key,
      required this.nutrient,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(nutrient, style: Theme.of(context).textTheme.bodyLarge),
        LinearProgressIndicator(value: value, color: color),
      ],
    );
  }
}
