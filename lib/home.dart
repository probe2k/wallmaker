import 'package:flutter/material.dart';

class WallHome extends StatefulWidget {
  @override
  _WallHomeState createState() => _WallHomeState();
}

class _WallHomeState extends State<WallHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'WallMaker',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Center(child: Text('Test')),
          ),
        )),
      ),
    );
  }
}
