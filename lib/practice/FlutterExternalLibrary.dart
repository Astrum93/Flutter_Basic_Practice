import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FlutterExternalLibrary extends StatelessWidget {
  const FlutterExternalLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter에서 외부 라이브러리 사용하기'),
        ),
        body: const RandomWords(),
      ),
    );
  }
}

// english_words 사용해보기
class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map(
          (word) => Text(
            word.asCamelCase,
            style: const TextStyle(fontSize: 32),
          ),
        )
        .toList();

    return Column(
      children: widgets,
    );
  }
}
