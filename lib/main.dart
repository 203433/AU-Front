import 'package:flutter/material.dart';
import 'package:frontend/screens/pagina_inicio.dart';
import 'package:frontend/screens/editor_rutas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: "Asap"),
      initialRoute: "/",
      routes: {
        "/": (context) => const PaginaInicio(),
        "/editorrutas": (context) => const EditorRutas(),
      },
    );
  }
}
