import 'package:flutter/material.dart';

void main() => runApp(Layout(body: FirstPage()));

class FirstPage extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return Text('First Page');
  }

}

class SecondPage extends StatelessWidget {
  
  @override Widget build(BuildContext context) {
    return Text('Second Page');
  }

}

class Menu extends StatelessWidget {
  
  void navigate(BuildContext context, Widget widget) {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (BuildContext context) => Layout(body: widget),
    ));
  }

  @override Widget build(BuildContext context) {
    return Drawer(child: ListView(children: <Widget>[
      ListTile(
        title: Text('First Page'),
        onTap: () {
          navigate(context, FirstPage());
        },
      ),
      ListTile(
        title: Text('Second Page'),
        onTap: () {
          navigate(context, SecondPage());
        },
      ),
    ]));
  }
  
}

class Layout extends StatelessWidget {

  final Widget body;

  Layout({ @required this.body });

  @override Widget build(BuildContext context) {
    final String title = 'Flutter Demo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        drawer: Menu(),
        body: body,
      ),
    );
  }

}
