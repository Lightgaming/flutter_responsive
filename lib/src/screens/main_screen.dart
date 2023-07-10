import 'package:flutter/material.dart';
import 'package:responsive_flutter/src/widgets/app_scaffold.dart';

class MainScreen extends AppScaffoldDestination {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('MainScreen'),
    );
  }

  @override
  IconData get icon => Icons.home;

  @override
  String get title => 'Home';
}
