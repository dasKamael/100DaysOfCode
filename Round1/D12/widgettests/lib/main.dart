import 'package:flutter/material.dart';
import 'package:widgettests/screens/home.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Home(),
    }));
