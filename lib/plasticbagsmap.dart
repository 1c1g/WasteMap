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
      home: Home4(),
    );
  }
}

class Home4 extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home4> {
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
                  position: LatLng(42.963389, 74.575447),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Калыс-Ордо', onTap: () {
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
                  position: LatLng(42.845711, 74.551035),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Круговой", onTap: () {
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


              Marker marker3 = Marker(
                  markerId: markerId3,
                  position: LatLng(42.880369, 74.525871),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Исмаилова", onTap: () {
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

              Marker marker4 = Marker(
                  markerId: markerId4,
                  position: LatLng(42.878025, 74.565817),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Баймаханов", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet4("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker5 = Marker(
                  markerId: markerId5,
                  position: LatLng(42.878297, 74.567269),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "Мамбеталиев", onTap: () {
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
              title: Text("Полиэтилен"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Калыс-Ордо, 17, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 559 486 870"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 559 486 870");
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
              title: Text("Полиэтилен"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Павлова/Чуй, 21, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 706 335 546 \n+996 553 542 030"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 706 335 546");
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
              title: Text("Полиэтилен"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Арча-Бешик, район 4 гор. больницы , Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 708 373 116"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 708 373 116");
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
            title: Text("Полиэтилен"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Патриса Лумумбы, 54а, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 772 542 334 \n+996 772 308 458 \n+996 772 308 472"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 772 542 334");
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
            title: Text("Полиэтилен"),
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
