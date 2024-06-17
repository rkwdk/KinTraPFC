// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_template/src/features/home/widget/intake_progress_bar.dart';

class DailyIntakeSection extends StatelessWidget {
  const DailyIntakeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today\'s Intake',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const IntakeProgressBar(
          label: 'Calories',
          value: 0.8,
          color: Colors.orange,
        ),
        const IntakeProgressBar(label: 'Carbs', value: 0.5, color: Colors.blue),
        const IntakeProgressBar(
          label: 'Protein',
          value: 0.6,
          color: Colors.red,
        ),
        const IntakeProgressBar(label: 'Fat', value: 0.4, color: Colors.yellow),
      ],
    );
  }
}
