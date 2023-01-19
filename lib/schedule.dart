// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'shipschedule.dart';
import 'airplaneschedules.dart';
import 'busschedule.dart';
import 'navigation_drawer_widget.dart';

void main() => runApp(const schedule());

class schedule extends StatelessWidget {
  const schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedules',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Schedules', textAlign: TextAlign.left),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        ),
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const busSchedule()),
                  );
                },
                child: Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage("assets/bus.jpg"), fit: BoxFit.fill),
                  ),
                  child: Center(
                      child: Text("Bus Schedules", style: TextStyle(fontSize: 20))
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const planeSchedule()),
                  );
                },
                child: Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    ),
                  child: Center(
                      child: Text("Airplane Schedules", style: TextStyle(fontSize: 20))
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const shipSchedule()),
                  );
                },
                child: Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage("assets/ship.jpg"), fit: BoxFit.fill),
                  ),
                  child: Center(
                      child: Text("Boat Schedules", style: TextStyle(fontSize: 20))
                ),
              ),
              )],
          ),
        ),
      ),
    );
  }

}
