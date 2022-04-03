import 'package:flutter/material.dart';

import 'pages/home.dart';

List<Widget> pages = <Widget>[
  const Home(),
  Stack(
    children: const [
      Text("Histroy"),
    ],
  ),
  Stack(
    children: const [
      Text("Search"),
    ],
  ),
  Stack(
    children: const [
      Text("Profile"),
    ],
  )
];
