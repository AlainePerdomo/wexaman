// ignore_for_file: camel_case_types, unused_local_variable

import 'package:flutter/material.dart';

class shipSchedule extends StatefulWidget {
  const shipSchedule({super.key});

  @override
  State<shipSchedule> createState() => _shipScheduleState();
}

class _shipScheduleState extends State<shipSchedule> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text(
            'Boat Schedule',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          centerTitle: true,
          leading: BackButton(
            color: const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 93.5,
              child: ListView(
                padding: const EdgeInsets.only(top: 15, left: 10),
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const cayeCaulker()),
                        ),
                      );
                    },
                    child: Container(
                      width: 140,
                      margin: const EdgeInsets.all(10), // add margin
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[700],
                      ),
                      child: const Center(
                        child: Text(
                          'Caye Caulker',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const cayeCaulker(),
                        ),
                      );
                    },
                    child: Container(
                      width: 120,
                      margin: const EdgeInsets.all(10), // add margin
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[700],
                      ),
                      child: const Center(
                        child: Text(
                          'San Pedro',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: ListTile(
                      title: const Text(
                        'Belize - Dangriga',
                        style: TextStyle(fontSize: 22),
                      ),
                      subtitle: const Text(
                        '9:30',
                        style: TextStyle(fontSize: 20),
                      ),
                      tileColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 2),
                      ),
                      leading: const Icon(
                        Icons.directions_boat_filled,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class sanPedro extends StatelessWidget {
  const sanPedro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('San Pedro Island'),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ListTile(
                  title: const Text(
                    'Belize - Dangriga',
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: const Text(
                    '9:30',
                    style: TextStyle(fontSize: 20),
                  ),
                  tileColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(width: 2),
                  ),
                  leading: const Icon(
                    Icons.directions_boat_filled,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cayeCaulker extends StatelessWidget {
  const cayeCaulker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('Caye Caulker Island'),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: ListTile(
                      title: const Text(
                        'Belize - Dangriga',
                        style: TextStyle(fontSize: 22),
                      ),
                      subtitle: const Text(
                        '9:30',
                        style: TextStyle(fontSize: 20),
                      ),
                      tileColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 2),
                      ),
                      leading: const Icon(
                        Icons.directions_boat_filled,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
