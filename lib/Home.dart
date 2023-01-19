import 'package:flutter/material.dart';
import 'searchbar.dart';
import 'map.dart';
import 'feecalc.dart';
import 'favourites.dart';
import 'NearMe.dart';
import 'schedule.dart';
import 'package:flutter/services.dart';
import 'button_widget.dart';
import 'navigation_drawer_widget.dart';
import 'schedule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.greenAccent)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

        class _HomePageState extends State<HomePage> {
        @override
        Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
      appBar: AppBar(),

      // BODY

      body: const Center(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [

          // button 1

          Positioned(
            left: 48,
            bottom: 85,
            width: 130,

            child: FloatingActionButton(
              heroTag: 'Favourites',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favourites()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Favourites',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // button 2

          Positioned(
            right: 48,
            bottom: 85,
            width: 130,

            child: FloatingActionButton(
              heroTag: 'Near Me',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const feecalc()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Tickets',
                style: TextStyle(
                  color: Colors.black,
                ),
            ),
          ),
          ),

              // Button 3
              Positioned(
                right: 48,
                bottom: 190,
                width: 130,
            child: FloatingActionButton(
              heroTag: 'Near Me',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NearMe()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Near Me',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
              ),

          // Button 4
          Positioned(
            left: 48,
            bottom: 190,
            width: 130,
            child: FloatingActionButton(
              heroTag: 'Schedules',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const schedule()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Schedules',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Search bar
          Positioned(
            right: 40,
            top: 190,
            width: 130,
            height: 30,

            child: FloatingActionButton(
              heroTag: 'Search Bar',
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate()
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Search',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Text Box
          Positioned(
            left: 40,
            top: 130,

            child: const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),

          // map
          Positioned(
            right: 50,
            top: 270,
            width: 300,
            height: 200,

            child: FloatingActionButton(
              heroTag: 'Map',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBusMap()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Map will go here',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // Add more floating buttons if you want
          // There is no limit
          ]
      ),

    );


  }

