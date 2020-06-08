import 'package:News/screens/home_screen.dart';
import 'package:News/screens/singnin_screens/register.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 22),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 22),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        (_formKey.currentState.validate())
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return homeScreen();
                                }),
                              )
                            : null;
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        _formKey.currentState.validate();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return registerScreen();
                          }),
                        );
                      },
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
