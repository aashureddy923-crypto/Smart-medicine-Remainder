import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const SmartMedicineApp());
}

class SmartMedicineApp extends StatelessWidget {
  const SmartMedicineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Medicine Reminder',
      home: const SplashScreen(),
    );
  }
}