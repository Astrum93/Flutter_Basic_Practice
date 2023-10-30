import 'package:flutter/material.dart';

class SingleChildScrollViewTest extends StatelessWidget {
  const SingleChildScrollViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('This is App bar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
          ],
        ),
      ),
    );
  }
}
