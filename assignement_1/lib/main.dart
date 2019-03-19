import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

}

class MyHomePage extends StatefulWidget {

  final String title;

  MyHomePage({ Key key, this.title }) : super(key: key);

  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String _text = 'Initial text';

  void _changeText() {
    setState(() {
      _text = 'Some other text';
    });
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_text),
            RaisedButton(
              onPressed: _changeText,
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }

}
