import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _value = 0.0;

  void _setvalue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.backspace),
                  Text('PLAYING NOW'),
                  Icon(Icons.menu),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(800)),
                child: Image.asset(
                  'assets/nightflower.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Low Life',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Text('Future ft. The Weekend'),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('1:17'),
                      Text('2:46'),
                    ],
                  ),
                ),
                Slider(
                  value: _value,
                  onChanged: _setvalue,
                  activeColor: Colors.white70,
                  inactiveColor: Colors.grey[800],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.rotate_left, size: 70),
                Icon(Icons.play_circle_outline,
                    size: 90, color: Colors.orange[900]),
                Icon(Icons.rotate_right, size: 70)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
