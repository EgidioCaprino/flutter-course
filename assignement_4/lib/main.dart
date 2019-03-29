import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class User {
  final String firstName;
  final String lastName;

  User({ this.firstName = '', this.lastName = '' });

  User setFirstName(value) {
    return User(firstName: value, lastName: lastName);
  }

  User setLastName(value) {
    return User(firstName: firstName, lastName: value);
  }
}

class MyApp extends StatefulWidget {
  @override State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List<User> users = [];

  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(body: ListView(children: <Widget>[
        UserList(users: users),
        UserForm(onSubmit: ({ @required User user }) {
          setState(() {
            users.add(user);
          });
        })
      ])),
    );
  }
}

class UserList extends StatelessWidget {
  final List<User> users;

  UserList({ @required this.users });

  Widget getUserWidget(User user) {
    return Text('${user.firstName} ${user.lastName}');
  }

  @override Widget build(BuildContext context) {
    return Column(children: users.map(getUserWidget).toList());
  }
}

class UserForm extends StatefulWidget {
  final Function onSubmit;

  UserForm({ @required this.onSubmit });

  @override State<StatefulWidget> createState() {
    return UserFormState(onSubmit: onSubmit);
  }
}

class UserFormState extends State<UserForm> {
  final Function onSubmit;
  User user = User();

  UserFormState({ @required this.onSubmit });

  @override Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(onChanged: (String firstName) {
        setState(() {  
          user = user.setFirstName(firstName);
        });
      }),
      TextField(onChanged: (String lastName) {
        setState(() {
          user = user.setLastName(lastName);
        });
      }),
      RaisedButton(
        child: Text('Submit'),
        onPressed: () {
          onSubmit(user: user);
          setState(() {
            user = User();
          });
        },
      ),
    ]);
  }
}
