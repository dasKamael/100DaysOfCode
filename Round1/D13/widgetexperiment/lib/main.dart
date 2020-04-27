import 'package:flutter/material.dart';
import 'package:widgetexperiment/pages/home.dart';

void main() => runApp(
      MaterialApp(
        title: 'Widget Testing',
        theme: ThemeData(
          primaryColor: Colors.grey[800],
        ),
        home: Home(),
      ),
    );
