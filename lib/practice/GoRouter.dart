import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FlutterGoRouter extends StatefulWidget {
  const FlutterGoRouter({super.key});

  @override
  State<FlutterGoRouter> createState() => _FlutterGoRouter();
}

class _FlutterGoRouter extends State<FlutterGoRouter> {
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
                context.pushNamed('new');
              },
              child: const Text('Go to Page')),
        ),
      ),
    );
  }
}
