import 'package:flutter/material.dart';
import 'package:flutter_basic_practice/practice/FlutterTheme.dart';

void main() {
  runApp(
      // MaterialApp.router(
      //   routerConfig: GoRouter(initialLocation: '/', routes: [
      //     GoRoute(
      //         path: '/',
      //         name: 'home',
      //         builder: (context, _) => const FlutterGoRouter()),
      //     GoRoute(
      //         path: '/new',
      //         name: 'new',
      //         builder: (context, _) => const GoRouterNewPage()),
      //     GoRoute(
      //         path: '/new1',
      //         name: 'new1',
      //         builder: (context, _) => const GoRouterNewPage2()),
      //   ]),
      // ),

      MaterialApp(home: const FlutterTheme(), theme: customTheme));
  // colorScheme: const ColorScheme.light(
  //   primary: Colors.indigo,
  //   secondary: Colors.green,
  //   tertiary: Colors.yellow,

  //appBarTheme: const AppBarTheme(backgroundColor: Colors.red)),
}

final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
  ),
  useMaterial3: true,
);
