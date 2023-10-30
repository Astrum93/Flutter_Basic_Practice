import 'package:flutter/material.dart';

class Constraint extends StatelessWidget {
  const Constraint({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('This is App bar'),
        ),
        body: Column(
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.blue,
              child: Center(
                child: Container(
                  constraints: BoxConstraints.tight(
                    const Size(200, 200),
                  ),
                  // minWidth: 200,
                  // minHeight: 200,
                  // maxWidth: 250,
                  // maxHeight: 250,

                  height: 300,
                  width: 300,
                  color: Colors.red,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.blue,
                    child: const Text(
                      'Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Text(
                      'Hi World',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
