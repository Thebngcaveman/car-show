import 'package:car_show/components/car_property.dart';
import 'package:car_show/components/icon_property.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final controller = PageController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: Container(
        padding: EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Icon(
                Icons.favorite_border,
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
                fontSize: 52,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CarProperty(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconProp(icon: Icons.card_travel,desc: "19/24",),
                  IconProp(icon: Icons.timer,desc: "3.2",),
                  IconProp(icon: Icons.network_cell,desc: "443",),
                ],
              ),
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
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.refresh,
                  size: 35.0,
                  color: Colors.grey,
                ),
                Text(
                  'EXCHANGE YOUR VEHICLE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 35.0,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
            ),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
