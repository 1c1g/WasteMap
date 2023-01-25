import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home3(),
    );
  }
}

class Home3 extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home3> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(42.876452, 74.603601),
    zoom: 10,
  );
  List<MarkerId>listMarkerIds = List<MarkerId>.empty(growable: true);

  //final MarkerId markerId = MarkerId("current");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: Container(
          child: GoogleMap(
            initialCameraPosition: _kGooglePlex,
            zoomGesturesEnabled: true,
            mapType: MapType.normal,
            markers: Set<Marker>.of(markers.values),

            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);

              MarkerId markerId1 = MarkerId("1");
              MarkerId markerId2 = MarkerId("2");
              MarkerId markerId3 = MarkerId("3");
              MarkerId markerId4 = MarkerId("4");
              MarkerId markerId5 = MarkerId("5");


              listMarkerIds.add(markerId1);
              listMarkerIds.add(markerId2);
              listMarkerIds.add(markerId3);
              listMarkerIds.add(markerId4);
              listMarkerIds.add(markerId5);

              Marker marker1 = Marker(
                  markerId: markerId1,
                  position: LatLng(42.878197,74.564272),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Баймаханов', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker2 = Marker(
                  markerId: markerId2,
                  position: LatLng(42.874076, 74.559241),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Красный полумесяц", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet1("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));


              Marker marker3 = Marker(
                  markerId: markerId3,
                  position: LatLng(42.891146, 74.652908),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Красный полумесяц", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet2("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker4 = Marker(
                  markerId: markerId4,
                  position: LatLng(42.874626,74.633511),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Красный полумесяц", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet3("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker5 = Marker(
                  markerId: markerId5,
                  position: LatLng(42.884225,74.598851),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Красный полумесяц", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet3("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              setState(() {
                markers[markerId1] = marker1;
                markers[markerId2] = marker2;
                markers[markerId3] = marker3;
                markers[markerId4] = marker4;
                markers[markerId5] = marker5;
              });
            },

          ),
        )
    );
  }

  Widget getBottomSheet(String s) {
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Мешки, вата"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Чкалова/Чуй, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 773 696 811 \n+996 704 310 560"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 773 696 811");
            },
            child: const Text("Позвонить",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(400, 50)),
            ),
          ),
        ],
      ),
    );
  }


  Widget getBottomSheet1(String s) {
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Старая чистая одежда"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Дмитрова/Трудовая, 10, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 312 300 190"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 312 300 190");
            },
            child: const Text("Позвонить",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(400, 50)),
            ),
          ),
        ],
      ),
    );
  }

  Widget getBottomSheet2(String s) {
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Старая чистая одежда"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Байтик Баатыра/Медерова, 17, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 312 300 190"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 312 300 190");
            },
            child: const Text("Позвонить",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(400, 50)),
            ),
          ),
        ],
      ),
    );
  }
}

Widget getBottomSheet3(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("Старая чистая одежда"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Чуй, 28, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 312 300 190"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 312 300 190");
          },
          child: const Text("Позвонить",
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(400, 50)),
          ),
        ),
      ],
    ),
  );
}

Widget getBottomSheet4(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("Старая чистая одежда"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Жибек-Жолу, 495, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 312 300 190"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 312 300 190");
          },
          child: const Text("Позвонить",
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(400, 50)),
          ),
        ),
      ],
    ),
  );
}
