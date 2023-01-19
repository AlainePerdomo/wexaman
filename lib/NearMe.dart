import 'package:flutter/material.dart';
import 'Home.dart';
import 'schedule.dart';



class NearMe extends StatefulWidget {
  const NearMe({Key? key}) : super(key: key);

  @override
  _NearMe createState() => _NearMe();
}

class _NearMe extends State<NearMe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Test App",
        home: Scaffold(
          appBar: AppBar(title:Text("Schedules")),
          floatingActionButton: Wrap( //will break to another line on overflow
              direction: Axis.horizontal, //use vertical to show  on vertical axis
              children: <Widget>[

//Buttons
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NearMe()),
                    );
                  },
                  child: const Text(
                    'Near Me',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                      color: Color(0xff4c505b),
                    ),
                  ),
                ),


//buttons end

              ]),
        )
    );
  }
}