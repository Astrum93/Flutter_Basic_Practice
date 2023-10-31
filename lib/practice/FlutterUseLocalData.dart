import 'package:flutter/material.dart';

class FlutterUseLocalData extends StatelessWidget {
  const FlutterUseLocalData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter에서 로컬 데이터 활용하기'),
        ),
        body: Center(
          child: Image.asset('assets/images/flutter.png'),
        ),
      ),
    );
  }
}
