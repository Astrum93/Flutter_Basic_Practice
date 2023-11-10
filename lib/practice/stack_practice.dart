import 'package:flutter/material.dart';

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('This is Stack'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              '첫 번째 스택',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
Stack(
  alignment: Alignment.bottomCenter,
  clipBehavior: Clip.none,
  children: [
    Container(
      width: 400,
      height: 400,
      color: Colors.blue.shade900,
    ),
    Positioned(
      bottom: -100,
      child: Container(

        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(image: AssetImage('assets/images/flutter.png')),
          borderRadius: BorderRadius.circular(150),
        ),
        width: 200,
        height: 200,
      ),
    ),
  ],
),
          ],
        ),
      ),
    );
  }
}
