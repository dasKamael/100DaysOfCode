import 'package:flutter/material.dart';
import './pages/home.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.grey[800],
          accentColor: Colors.white,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white60)),
          iconTheme: IconThemeData(color: Colors.white70),
        ),
        routes: {
          "/": (context) => Home(),
        },
      ),
    );
