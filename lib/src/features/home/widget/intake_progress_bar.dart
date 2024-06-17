import 'package:flutter/material.dart';

class IntakeProgressBar extends StatelessWidget {

  const IntakeProgressBar(
      {super.key,
      required this.label,
      required this.value,
      required this.color,});
  final String label;
  final double value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyLarge),
        LinearProgressIndicator(value: value, color: color),
      ],
    );
  }
}
