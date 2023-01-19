import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyLoc());
}

class MyLoc extends StatelessWidget {
  const MyLoc({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
