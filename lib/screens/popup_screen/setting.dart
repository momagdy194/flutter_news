import 'package:flutter/material.dart';

class setting_screen extends StatefulWidget {
  @override
  _setting_screenState createState() => _setting_screenState();
}

class _setting_screenState extends State<setting_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        centerTitle: false,
      ),
      body: Container(
        child: Center(child: Text('Setting')),
      ),
    );
  }
}
