import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'button_widget.dart';
import 'navigation_drawer_widget.dart';
import 'searchbar.dart';
import 'map.dart';
import 'feecalc.dart';
import 'favourites.dart';
import 'NearMe.dart';
import 'schedule.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MainPage(),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    // endDrawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text(MyApp.title),
    ),

    body: Builder(
      builder: (context) => Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: ButtonWidget(
          icon: Icons.open_in_new,
          text: 'Drawer',
          onClicked: () {
            Scaffold.of(context).openDrawer();
            // Scaffold.of(context).openEndDrawer();
          },
        ),
      ),
    ),
  );




}