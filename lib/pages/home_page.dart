import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/providers.dart';
import 'package:ui/widgets/partners_scaffold.dart';

import '../widgets/home_scaffold.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Builder(builder: (context) {
        switch (ref.watch(homeProvider)) {
          case 0:
            return const HomeScaffold();
          case 1:
            return const Center(child: Text('Services'));
          case 2:
            return const PartnersScaffold();
          case 3:
            return const Center(child: Text('Activity'));
          default:
            return const Center(child: Text('Home'));
        }
      }),
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: ref.watch(homeProvider),
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
        onTabChangedListener: (index) {
          ref.read(homeProvider.state).state = index;
        },
      ),
    );
  }
}
