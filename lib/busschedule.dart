// ignore_for_file: camel_case_types, unused_local_variable

import 'package:flutter/material.dart';

class busSchedule extends StatefulWidget {
  const busSchedule({super.key});

  @override
  State<busSchedule> createState() => _busScheduleState();
}

class _busScheduleState extends State<busSchedule> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text(
            'Bus schedule',
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
                          builder: (context) => const Belize(),
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
                          'Belize',
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
                          builder: (context) => const Toledo(),
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
                          'Toledo',
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
                          builder: (context) => const Cayo(),
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
                          'Cayo',
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
                          builder: (context) => const orangeWalk(),
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
                          'Orange Walk',
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
                          builder: (context) => const stannCreek(),
                        ),
                      );
                    },
                    child: Container(
                      width: 135,
                      margin: const EdgeInsets.all(10), // add margin
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[700],
                      ),
                      child: const Center(
                        child: Text(
                          'Stann Creek',
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
                          builder: (context) => const Corozal(),
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
                          'Corozal',
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
                      isThreeLine: true,
                      tileColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 2),
                      ),
                      leading: const Icon(
                        Icons.directions_bus_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Belize extends StatelessWidget {
  const Belize({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('Belize District'),
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
                        Icons.directions_bus_sharp,
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

class Cayo extends StatelessWidget {
  const Cayo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('Cayo District'),
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
                        Icons.directions_bus_sharp,
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

class Toledo extends StatelessWidget {
  const Toledo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('Toledo District'),
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
                        Icons.directions_bus_sharp,
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

class orangeWalk extends StatelessWidget {
  const orangeWalk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('Orange Walk District'),
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
                        Icons.directions_bus_sharp,
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

class stannCreek extends StatelessWidget {
  const stannCreek({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('Stann Creek District'),
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
                        Icons.directions_bus_sharp,
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

class Corozal extends StatelessWidget {
  const Corozal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          title: const Text('Corozal District'),
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
                        Icons.directions_bus_sharp,
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
