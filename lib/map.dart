import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/planemap.dart';
import 'boatmap.dart';
import 'navigation_drawer_widget.dart';

void main(){
  runApp(MyBusMap());
}

class MyBusMap extends StatelessWidget {
  const MyBusMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(
      17.49952, -88.19756); //location to show in map

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Belize National Bus Locations"),
      ),


      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition( //innital position in map
              target: showLocation, //initial position
              zoom: 8.0, //initial zoom level
            ),
            markers: getmarkers(),
            mapType: MapType.normal,

          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget> [
                  FloatingActionButton(
                    onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const MyBoatMap()),
                     );
                     },
                    child: Icon(Icons.directions_boat),
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(height: 16.0),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyPlaneMap()),
                      );
                    },
                    child: Icon(Icons.airplane_ticket),
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );}

  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      markers.add(Marker( //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Bus stop 1',
          snippet: 'bus stop line',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.1908, -88.3597),
        infoWindow: InfoWindow( //popup info
          title: 'Marker Title Second ',
          snippet: 'My Custom Subtitle',
          onTap: () {}),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      // third
      markers.add(Marker( //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.1908, -88.3597),
        infoWindow: InfoWindow( //popup info
            title: 'Marker Title Second ',
            snippet: 'My Custom Subtitle',
            onTap: () {}
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //add more markers here
    });
    return markers;
  }

  // model


}
