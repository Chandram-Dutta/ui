import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: 0,
        circleColor: Theme.of(context).colorScheme.primary,
        inactiveIconColor: Theme.of(context).colorScheme.secondary,
        tabs: [
          TabData(
            icon: Icons.home_outlined,
          ),
          TabData(
            icon: Icons.home_repair_service_outlined,
          ),
          TabData(
            icon: Icons.handshake_outlined,
          ),
          TabData(
            icon: Icons.notifications_none_outlined,
          ),
        ],
        onTabChangedListener: (index) {},
      ),
    );
  }
}
