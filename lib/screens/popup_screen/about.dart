import 'package:flutter/material.dart';

class about_screen extends StatefulWidget {
  @override
  _about_screenState createState() => _about_screenState();
}

class _about_screenState extends State<about_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: false,
      ),
      body: Container(
        child: Center(child: Text('About')),
      ),
    );
  }
}
