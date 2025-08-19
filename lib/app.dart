import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/report_page.dart';
import 'pages/settings_page.dart';

class Clima3DApp extends StatelessWidget {
  const Clima3DApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima3D',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/report': (context) => const ReportPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}