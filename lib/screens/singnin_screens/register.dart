import 'package:News/screens/home_screen.dart';
import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget {
  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Yourname'),
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
              SizedBox(
                width: double.infinity,
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
                    "REGISTER",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
