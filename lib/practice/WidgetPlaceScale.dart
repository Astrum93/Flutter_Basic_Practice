import 'package:flutter/material.dart';

class WidgetPlaceScale extends StatelessWidget {
  const WidgetPlaceScale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('This is App bar'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
        ],
      ),
    );
  }
}
