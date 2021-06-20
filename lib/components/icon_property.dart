import 'package:flutter/material.dart';

class IconProp extends StatelessWidget {
  const IconProp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          Icons.card_travel,
          color: Colors.grey,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          '19/24',
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
