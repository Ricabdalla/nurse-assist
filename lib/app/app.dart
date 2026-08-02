import '../design_system/theme.dart';
import 'package:flutter/material.dart';
import '../features/home/home_page.dart';

class NurseAssistApp extends StatelessWidget {
  const NurseAssistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NurseAssist',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}