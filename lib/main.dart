import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // localizationsDelegates: [
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate
      // ],
      localizationsDelegates: L10n.localizationsDelegates,
      // supportedLocales: [
      //   Locale('ja', 'JP'),
      // ],
      supportedLocales: L10n.supportedLocales,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NutriTrack'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // プロフィール設定画面への遷移
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WeeklyProgressSection(),
              SizedBox(height: 16),
              DailyIntakeSection(),
              SizedBox(height: 16),
              MealLogSection(),
              SizedBox(height: 16),
              WeeklyGraphsSection(),
              SizedBox(height: 16),
              NotificationSection(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 食事追加画面への遷移
        },
        backgroundColor: Colors.blue,
        tooltip: 'Add Meal',
        child: const Icon(Icons.add),
      ),
    );
  }
}

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

class DailyIntakeSection extends StatelessWidget {
  const DailyIntakeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Today\'s Intake',
            style: Theme.of(context).textTheme.headlineSmall),
        const IntakeProgressBar(
            label: 'Calories', value: 0.8, color: Colors.orange),
        const IntakeProgressBar(label: 'Carbs', value: 0.5, color: Colors.blue),
        const IntakeProgressBar(
            label: 'Protein', value: 0.6, color: Colors.red),
        const IntakeProgressBar(label: 'Fat', value: 0.4, color: Colors.yellow),
      ],
    );
  }
}

class IntakeProgressBar extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const IntakeProgressBar(
      {super.key,
      required this.label,
      required this.value,
      required this.color});

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
            calories: 300),
        const MealLogEntry(
            timeOfDay: 'Lunch', description: 'Chicken salad', calories: 500),
        const MealLogEntry(
            timeOfDay: 'Dinner',
            description: 'Grilled fish with veggies',
            calories: 400),
        const MealLogEntry(
            timeOfDay: 'Snacks', description: 'Yogurt and nuts', calories: 200),
      ],
    );
  }
}

class MealLogEntry extends StatelessWidget {
  final String timeOfDay;
  final String description;
  final int calories;

  const MealLogEntry(
      {super.key,
      required this.timeOfDay,
      required this.description,
      required this.calories});

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

class WeeklyGraphsSection extends StatelessWidget {
  const WeeklyGraphsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Weekly Progress',
            style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(
          height: 200,
          child: Placeholder(), // グラフウィジェットをここに配置
        ),
      ],
    );
  }
}

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Notifications', style: Theme.of(context).textTheme.headlineSmall),
        const NotificationEntry(
            message: 'You exceeded your calorie goal today!'),
        const NotificationEntry(message: 'Don\'t forget to log your lunch.'),
      ],
    );
  }
}

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
