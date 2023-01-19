import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'boatmap.dart';
import 'map.dart';
import 'navigation_drawer_widget.dart';


class MyPlaneMap extends StatelessWidget {
  const MyPlaneMap({Key? key}) : super(key: key);

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
        title: Text("Belize National Airplane Locations"),
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
                        MaterialPageRoute(builder: (context) => const MyBusMap()),
                      );
                    },
                    child: Icon(Icons.bus_alert),
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

      markers.add(Marker( //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.516104756336418, -88.19486767849254),

        onTap: () {},

        infoWindow: InfoWindow( //popup info
            title: 'Tropic Air',
            snippet: 'International Airport - Belize City',
            onTap: () {}),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      // third
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.51587003082624, -88.1940532301128), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Tropic Air',
          snippet: 'TZA - Belize City',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      // fourth
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.736227553753203, -88.02905404456868), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Tropic Air',
          snippet: 'Caye Caulker',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //five
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(18.380803364055026, -88.41046497560214), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Tropic Air',
          snippet: 'Corozal',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //six
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(16.995481448231963, -88.22999443742881), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Tropic Air',
          snippet: 'Dangriga & Hopkins',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //seven
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(16.54449795420074, -88.363786496885171), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Tropic Air',
          snippet: 'Placencia',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //seven
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(15.946639683269522, -89.63129298689841), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Tropic Air',
          snippet: 'Punta Gorda',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //seven
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.91867927544611, -87.9643891414501), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Tropic Air',
          snippet: 'San Pedro',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(16.535653378658445, -88.43780876215584), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Maya Island Air',
          snippet: 'Savvanah, Mango Creek',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(17.68906857511492, -88.0432549237799), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Maya Island Air',
          snippet: 'Orange Walk',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));



      //add more markers here
    });
    return markers;
  }

// model


}
