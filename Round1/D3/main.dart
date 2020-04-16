import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dasKamel"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Hello"),
              RaisedButton(
                onPressed: () {},
                child: Text("Click Here"),
                color: Colors.blue,
              ),
              Text("Nope"),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('No.1'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.amber,
            child: Text('No.2'),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.pinkAccent,
            child: Text('No.3'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("+"),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}
