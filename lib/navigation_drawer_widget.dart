import 'package:flutter/material.dart';
import 'feecalc.dart';
import 'schedule.dart';
import 'Home.dart';
import 'favourites.dart';
import 'map.dart';
import 'NearMe.dart';
import 'searchbar.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'XAMANGO';
    final urlImage =
       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2E63sHWIA7MAh6jZJHr6LHQC54EL20g9UYA&usqp=CAU';
    return Drawer(

      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyApp(),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildSearchField(),

                  // NAMES

                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Schedules',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Fee Calculator',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'My Map',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Favourites',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Near Me',
                    icon: Icons.account_tree_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 30)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField();
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {

      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyApp(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => schedule(),
        ));
        break;

        //


      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => feecalc(),
        ));
        break;

    //

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyBusMap(),
        ));
        break;

    //

      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Favourites(),
        ));
        break;

    //

      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NearMe(),
        ));
        break;

    //


    }
  }
}