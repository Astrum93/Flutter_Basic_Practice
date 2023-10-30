import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CustomContainer(),
    ),
  );
}

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

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        // 위쪽 공간 확보하는 위젯
        child: Center(
          child: Text(
            'Hello, Flutter',
            style: TextStyle(
              fontSize: 60,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('This is App bar'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
          decoration: BoxDecoration(
            color: const Color(0xFF85D07B),
            border: Border.all(
                color: Colors.red, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(6, 6),
                  blurRadius: 10,
                  spreadRadius: 10),
              BoxShadow(
                  color: Colors.blue,
                  offset: Offset(-6, -6),
                  blurRadius: 10,
                  spreadRadius: 10),
            ],
          ),
          child: Center(
            child: Container(
              color: Colors.yellow,
              child: const Text('Hello Container'),
            ),
          ),
        ),
      ),
    );
  }
}
