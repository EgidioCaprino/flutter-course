import 'package:flutter/material.dart';

import './login_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final title = 'Flutter Demo';

  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Container(child: LoginForm()),
      ),
    );
  }
}
