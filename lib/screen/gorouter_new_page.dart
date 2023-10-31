import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterNewPage extends StatelessWidget {
  const GoRouterNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome New Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Go to Back!'),
          ),
          TextButton(
            onPressed: () => context.pushNamed('new1'),
            child: const Text('Go to NewPage2!'),
          ),
        ],
      ),
    );
  }
}

class GoRouterNewPage2 extends StatelessWidget {
  const GoRouterNewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome New Page2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go to Back!'),
          ),
          TextButton(
            onPressed: () {
              context.goNamed('home');
            },
            child: const Text('Go to home!'),
          ),
        ],
      ),
    );
  }
}
