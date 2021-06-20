import 'package:car_show/components/icon_property.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Car List Special Deal',
          style: TextStyle(color: Colors.white38),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.orange,
                  size: 35.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Your Desired Car',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                'assets/images/porsche.png',
                fit: BoxFit.cover,
                height: 175,
                width: MediaQuery.of(context).size.width - 30.0,
              ),
              Text(
                'PORSCHE',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '2019 - 911 CARRERA S',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    fontFamily: 'Montserrat',
                    color: Colors.grey[500]),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconProp(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

