import 'package:flutter/material.dart';

class WallHome extends StatefulWidget {
  @override
  _WallHomeState createState() => _WallHomeState();
}

class _WallHomeState extends State<WallHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'WallMaker',
          style: TextStyle(
            color: Colors.red,
          ),
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
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                    ),
                  ),
                ),
                Icon(
                  Icons.search,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
