import 'package:flutter/material.dart';

import './validators.dart';

class LoginForm extends StatefulWidget {
  @override State<StatefulWidget> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final key = GlobalKey<FormState>();

  String validateEmail(String value) {
    if (!isValidEmailAddress(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  @override Widget build(BuildContext context) {
    return Form(
      key: key,
      child: ListView(children: <Widget>[
        TextFormField(
          autovalidate: true,
          decoration: InputDecoration(labelText: 'Email'),
          validator: validateEmail,
        ),
      ]),
    );
  }
}
