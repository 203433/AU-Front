import 'dart:io';

import 'package:frontend/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: "Asap"),
      initialRoute: "/",
      routes: {
        "/": (context) => AuthScreen(),
      },
    );
  }
}

// main() async {
//   HttpOverrides.global = MyHttpOverrides();
//   runApp(GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: AuthScreen(),
//   ));
// }