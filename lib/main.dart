import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/pages_list.dart';
import 'package:ui/providers/bottom_bar_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(19, 14, 14, 1),
        colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          primary: Color.fromRGBO(19, 14, 14, 1),
          secondary: Color.fromRGBO(30, 215, 96, 1),
          secondaryContainer: Color.fromRGBO(29, 185, 84, 1),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(19, 14, 14, 1),
        colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          primary: Color.fromRGBO(19, 14, 14, 1),
          secondary: Color.fromRGBO(30, 215, 96, 1),
          secondaryContainer: Color.fromRGBO(29, 185, 84, 1),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: pages.elementAt(
        ref.watch(bottomBarSelectedIndexProvider),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 30,
        selectedFontSize: 10,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedFontSize: 10,
        currentIndex: ref.watch(bottomBarSelectedIndexProvider),
        onTap: (index) {
          ref.read(bottomBarSelectedIndexProvider.state).state = index;
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
            label: "Your Library",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.spotify),
            label: "Premium",
          )
        ],
      ),
    );
  }
}
