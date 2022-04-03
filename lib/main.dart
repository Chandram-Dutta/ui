import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/pages/home_pade.dart';

import 'pages/landing_page.dart';

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
      routes: {
        '/landing': (context) => const LandingPage(),
        '/home': (context) => const HomePage(),
      },
      title: 'Finance UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(19, 14, 14, 1),
        colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          primary: Color.fromRGBO(0, 3, 31, 1),
          primaryContainer: Colors.white,
          secondary: Color.fromRGBO(210, 109, 89, 1),
          secondaryContainer: Color.fromRGBO(229, 192, 143, 1),
        ),
      ),
      initialRoute: '/landing',
    );
  }
}
