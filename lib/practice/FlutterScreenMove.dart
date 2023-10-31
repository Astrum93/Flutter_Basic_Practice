import 'package:flutter/material.dart';

class FlutterBottomNavigationBar extends StatefulWidget {
  const FlutterBottomNavigationBar({super.key});

  @override
  State<FlutterBottomNavigationBar> createState() =>
      _FlutterBottomNavigationBar();
}

class _FlutterBottomNavigationBar extends State<FlutterBottomNavigationBar> {
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
          title: const Text('Flutter의 BottomNavigationBar'),
        ),
        body: homeBody(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ],
          currentIndex: index,
          onTap: (newIndex) => setState(() => index = newIndex),
        ),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return const Center(
          child: Icon(Icons.search, size: 100),
        );
      case 2:
        return const Center(
          child: Icon(Icons.person, size: 100),
        );
      case 0:
      default:
        return const Center(
          child: Icon(Icons.home, size: 100),
        );
    }
  }
}
