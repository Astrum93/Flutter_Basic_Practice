import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        centerTitle: true,
        title: const Text('This is Custom Container'),
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
