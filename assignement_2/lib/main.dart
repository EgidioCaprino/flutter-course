import 'package:flutter/material.dart';
import './product_form.dart';

void main() => runApp(MyApp());

class CreateProductTile extends StatelessWidget {
  
  @override Widget build(BuildContext context) {
    return ListTile(
      title: Text('Create Product'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => new ProductForm()),
        );
      },
    );
  }

}

class MyApp extends StatelessWidget {

  @override Widget build(BuildContext context) {
    final String title = 'Flutter Demo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title),),
        drawer: Drawer(child: ListView(children: <Widget>[CreateProductTile()])),
      )
    );
  }

}
