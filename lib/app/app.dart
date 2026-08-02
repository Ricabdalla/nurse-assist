import 'package:flutter/material.dart';

import '../design_system/theme.dart';
import 'router.dart';

class NurseAssistApp extends StatelessWidget {
  const NurseAssistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'NurseAssist',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}