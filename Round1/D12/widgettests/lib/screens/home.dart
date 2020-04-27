import 'package:flutter/material.dart';

enum WhyFarther {
  harder,
  smarter,
  selfStarter,
  tradingCharter,
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List popUpItems = [
    PopupMenuItem(
      value: WhyFarther.harder,
      child: Text('Working a lot harder'),
    ),
    PopupMenuItem(
      value: WhyFarther.smarter,
      child: Text('Not'),
    ),
    PopupMenuItem(
      value: WhyFarther.selfStarter,
      child: Text('Working a lot harder'),
    ),
    PopupMenuItem(
      value: WhyFarther.tradingCharter,
      child: Text('Working a lot harder'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String popUpPick = 'Pick a PopUp';

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(popUpPick),
                  PopupMenuButton<WhyFarther>(
                      onSelected: (WhyFarther result) {
                        setState(() {
                          popUpPick = 'Hello';
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<WhyFarther>>[...popUpItems]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
