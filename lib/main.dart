import 'package:flutter/material.dart';
import 'Home.dart';


void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'Home',
        routes: {
          'Home': (context) => const MyApp(),
        }),
  );
}

