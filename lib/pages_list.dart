import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/library.dart';
import 'pages/search.dart';

List<Widget> pages = <Widget>[
  const Home(),
  const Search(),
  const Library(),
  Stack(
    children: const [
      Text("Premium"),
    ],
  )
];
