import 'package:flutter/material.dart';
import 'package:responsive_flutter/src/config/app_theme.dart';
import 'package:responsive_flutter/src/screens/main_screen.dart';
import 'package:responsive_flutter/src/screens/settings_screen.dart';
import 'package:responsive_flutter/src/widgets/app_scaffold.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const AppScaffold(
        children: [
          MainScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}
