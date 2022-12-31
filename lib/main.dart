// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/pages/profile.dart';
import 'package:frontend/pages/top.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: "asap"),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => Profile(),
        "/top": (BuildContext context) => Top(),
      },
    );
  }
}
