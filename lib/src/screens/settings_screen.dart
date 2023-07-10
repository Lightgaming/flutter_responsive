import 'package:flutter/material.dart';
import 'package:responsive_flutter/src/widgets/app_scaffold.dart';

class SettingsScreen extends AppScaffoldDestination {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('SettingsScreen'),
    );
  }

  @override
  IconData get icon => Icons.settings;

  @override
  String get title => 'Settings';
}
