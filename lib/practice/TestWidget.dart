import 'package:flutter/material.dart';

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
