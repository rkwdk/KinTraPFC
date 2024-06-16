import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nutri_meter/features/home/screen/home_screen.dart';

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
