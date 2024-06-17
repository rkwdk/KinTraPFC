// Flutter imports:
import 'package:flutter/material.dart';

class WeeklyGraphsSection extends StatelessWidget {
  const WeeklyGraphsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Weekly Progress',
            style: Theme.of(context).textTheme.headlineSmall,),
        const SizedBox(
          height: 200,
          child: Placeholder(), // グラフウィジェットをここに配置
        ),
      ],
    );
  }
}
