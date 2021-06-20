import 'package:flutter/material.dart';

class IconProp extends StatelessWidget {
  final IconData icon;
  final String desc;

  IconProp({required this.icon,required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.grey,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          '$desc',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
