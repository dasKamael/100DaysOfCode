import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Day 5',
      home: HomeScreen(),
    ));

var appBarTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 30.0,
  color: Colors.amber,
);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text('Day 5', style: appBarTextStyle),
              ),
              height: 50.0,
              constraints: BoxConstraints(minWidth: ),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Center(
                            child: Image.asset('assets/camel.png'),
                          ),
                        ),
                        Divider(color: Colors.grey[800]),
                        Text(
                          'NAME',
                          style: TextStyle(color: Colors.amber, fontSize: 20.0),
                        ),
                        Text(
                          'Richard Maasri',
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Icon(Icons.mail, color: Colors.amber),
                            SizedBox(width: 10.0),
                            Text('richard.maasri@hotmail.de',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  constraints: BoxConstraints(minWidth: 1000),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.home, color: Colors.amber, size: 50.0),
                  Icon(Icons.home, color: Colors.amber, size: 50.0),
                  Icon(Icons.home, color: Colors.amber, size: 50.0),
                  Icon(Icons.home, color: Colors.amber, size: 50.0),
                  Icon(Icons.home, color: Colors.amber, size: 50.0),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}