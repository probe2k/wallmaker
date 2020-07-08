import 'package:flutter/material.dart';
import 'package:wallmaker/home.dart';

void run() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: WallHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}