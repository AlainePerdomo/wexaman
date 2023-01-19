import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/planemap.dart';
import 'map.dart';
import 'navigation_drawer_widget.dart';

class MyBoatMap extends StatelessWidget {
  const MyBoatMap({Key? key}) : super(key: key);

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
        title: Text("Belize National Boat Locations"),
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
                        MaterialPageRoute(builder: (context) => const MyBusMap()),
                      );
                    },
                    child: Icon(Icons.bus_alert),
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
        position: LatLng(17.49391, -88.18339),

        onTap: () {},

        infoWindow: InfoWindow( //popup info
            title: 'San Pedro Belize Express Boat Terminal',
            snippet: 'Belize City',
            onTap: () {}),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      // third
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.74352095972215, -88.02345353064172), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'San Pedro Belize Express Boat Terminal',
          snippet: 'Caye Caulker',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      // fourth
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.918177348884978, -87.96199042891234), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'San Pedro Belize Express Boat Terminal',
          snippet: 'Caye Caulker',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //five
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(18.49381939075363, -88.29907489405707), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'San Pedro Belize Express Boat Terminal',
          snippet: 'Caye Caulker',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));


      //add more markers here
    });
    return markers;
  }

// model


}
