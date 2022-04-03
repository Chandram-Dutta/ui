import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/page_list.dart';
import 'package:ui/provider/bottom_bar.dart';

class DrawerPage extends ConsumerWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: pages.elementAt(
        ref.watch(bottomBarSelectedIndexProvider),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Theme.of(context).colorScheme.primaryContainer,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedFontSize: 10,
        currentIndex: ref.watch(bottomBarSelectedIndexProvider),
        onTap: (index) {
          ref.read(bottomBarSelectedIndexProvider.state).state = index;
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.arrow_2_circlepath),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
