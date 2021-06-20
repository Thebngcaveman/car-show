import 'package:flutter/material.dart';

class CarProperty extends StatelessWidget {
  const CarProperty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/lamborghini.png',
            fit: BoxFit.contain,
            height: 175,
            width: MediaQuery.of(context).size.width - 30.0,
          ),
          Text(
            'LAMBORGHINI',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '2019 - 911 AVENTADOR',
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
        ],
      ),
    );
  }
}
