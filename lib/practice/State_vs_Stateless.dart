import 'package:flutter/material.dart';

class State_vs_Stateless extends StatelessWidget {
  const State_vs_Stateless({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Stateless vs State'),
        ),
        body: const Column(
          children: [
            ExampleStateless(),
            ExampleStateful(index: 3),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red.shade200,
      ),
    );
  }
}

//////////////////////////////////////////////////////

class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;
  late TextEditingController textController;

  @override
  void initState() {
    _index = widget.index;
    // TODO: implement initState
    super.initState();

    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
            _index++;
          });

          print(_index);
        },
        child: Container(
          color: Colors.blue.withOpacity(_index / 5),
          child: Center(child: Text('$_index')),
        ),
      ),
    );
  }
}


