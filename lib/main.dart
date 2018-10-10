import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
     @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ciao a tutti!!!'),
        ),
        body: Center(
          //child: Text('Hello World'),
          //child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {

      Widget build(BuildContext context) {
        final wordPair = WordPair.random();
        return Text(wordPair.asPascalCase);
      }
}

class RandomWords extends StatefulWidget {

  RandomWordsState createState() => new RandomWordsState();
}