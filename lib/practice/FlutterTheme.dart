import 'package:flutter/material.dart';

class FlutterTheme extends StatefulWidget {
  const FlutterTheme({super.key});

  @override
  State<FlutterTheme> createState() => _FlutterThemeState();
}

class _FlutterThemeState extends State<FlutterTheme> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child:
Scaffold(
  appBar: AppBar(
    centerTitle: true,
    title: const Text('Flutter Theme'),
  ),
  body: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Press count',
          style: textTheme.bodyLarge,
        ),
        Text(
          '$count',
          style: textTheme.displayLarge,
        ),
      ],
    ),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      setState(() {
        count++;
      });
    },
  ),
),
    );
  }
}
