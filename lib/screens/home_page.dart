import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.orange,
                  size: 35.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
