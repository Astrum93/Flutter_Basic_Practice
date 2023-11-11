import 'package:flutter/material.dart';
import 'package:flutter_basic_practice/practice/CustomContainer.dart';
import 'package:flutter_basic_practice/practice/FlutterInput.dart';
import 'package:flutter_basic_practice/practice/StackWidget.dart';
import 'package:flutter_basic_practice/practice/State_vs_Stateless.dart';
import 'package:flutter_basic_practice/practice/WidgetPlaceScale.dart';
import 'package:flutter_basic_practice/practice/flutter_input_practice.dart';
import 'package:flutter_basic_practice/practice/stack_practice.dart';

import 'practice/FlutterTheme.dart';

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

MaterialApp(
  debugShowCheckedModeBanner: false,
  home: const FlutterTheme(),
  theme: ThemeData(
    //brightness: Brightness.dark,
    colorScheme: const ColorScheme.light(
      primary: Colors.indigo,
      secondary: Colors.green,
      tertiary: Colors.yellow,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.red),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
    ),
    useMaterial3: true,
  ),
),
  );
}

final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
  ),
  useMaterial3: true,
);
