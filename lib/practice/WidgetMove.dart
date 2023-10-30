import 'package:flutter/material.dart';

class WidgetMove extends StatelessWidget {
  const WidgetMove({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget을 상하로 배치하기'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  child: const Text('Container 1'),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.green,
                  child: const Text('Container 2'),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.blue,
                  child: const Text('Container 3'),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  child: const Text('Container 1'),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.green,
                  child: const Text('Container 2'),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.blue,
                  child: const Text('Container 3'),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 80,
              color: Colors.amber,
              child: const Text('Container 4'),
            )
          ],
        ),
      ),
    );
  }
}
