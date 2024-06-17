import 'package:flutter/material.dart';
import 'package:flutter_template/src/features/home/widget/dailyIntake_section.dart';
import 'package:flutter_template/src/features/home/widget/meal_log_section.dart';
import 'package:flutter_template/src/features/home/widget/notification_section.dart';
import 'package:flutter_template/src/features/home/widget/weekly_graphs_section.dart';
import 'package:flutter_template/src/features/home/widget/weekly_progress_section.dart';

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
