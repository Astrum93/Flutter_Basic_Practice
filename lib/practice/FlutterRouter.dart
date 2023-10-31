import 'package:flutter/material.dart';
import 'package:flutter_basic_practice/screen/new_page.dart';

class FlutterRouter extends StatefulWidget {
  const FlutterRouter({super.key});

  @override
  State<FlutterRouter> createState() => _FlutterRouter();
}

class _FlutterRouter extends State<FlutterRouter> {
  late int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Router로 화면 이동하기'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewPage(),
                  ),
                );
              },
              child: const Text('Go to Page')),
        ),
      ),
    );
  }
}
