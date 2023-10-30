import 'package:flutter/material.dart';

class FirstScaffold extends StatelessWidget {
  const FirstScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              print('Tab!');
            },
            icon: const Icon(Icons.home),
          ),
          const Icon(Icons.play_arrow),
        ],
        centerTitle: true,
        title: const Text('This is App bar'),
      ),
      body: const Text('Hello World'),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.bug_report),
        onPressed: () {
          print('Tab FAB!');
        },
      ),
    );
  }
}
