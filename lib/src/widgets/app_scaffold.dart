import 'package:flutter/material.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:responsive_flutter/src/widgets/app_appbar.dart';

abstract class AppScaffoldDestination extends StatelessWidget
    implements AdaptiveScaffoldDestination {
  const AppScaffoldDestination({super.key});
}

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    super.key,
    required this.children,
  });

  static const routeName = '/';

  final List<AppScaffoldDestination> children;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      appBar: const AppAppbar(),
      onDestinationSelected: (value) {
        setState(() {
          _index = value;
        });
      },
      destinations: widget.children
          .map(
            (e) => AdaptiveScaffoldDestination(title: e.title, icon: e.icon),
          )
          .toList(),
      selectedIndex: _index,
      body: widget.children[_index],
    );
  }
}
