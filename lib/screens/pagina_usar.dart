import 'package:flutter/material.dart';
import 'package:frontend/modules/bottom_nav.dart';
import 'package:frontend/screens/editor_rutas.dart';

void main() => runApp(const PaginaUsar());

class PaginaUsar extends StatefulWidget {
  const PaginaUsar({super.key});

  @override
  State<PaginaUsar> createState() => _PaginaUsarState();
}

class _PaginaUsarState extends State<PaginaUsar> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    late PaginaUsarArguments datos;

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(0),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}

class PaginaUsarArguments {
  int selectedIndex;
  PaginaUsarArguments({required this.selectedIndex});
}
