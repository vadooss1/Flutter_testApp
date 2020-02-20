import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vadym Z',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _textCenter = 'Hey there';
  Color background = Colors.white;
  List<Color> colors = [Colors.white, Colors.amber, Colors.black, Colors.blue, 
                        Colors.brown, Colors.green, Colors.red, Colors.yellow,
                        Colors.pink, Colors.purple, Colors.teal, Colors.deepPurple,
                        Colors.orange];
  Random random = Random();

  void _updateColor() {
    setState(() {
      background = colors[random.nextInt(colors.length)];
      _textCenter = background.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_textCenter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateColor,
        tooltip: 'Update color',
        child: Icon(Icons.update),
      ),
    );
  }
}
