import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home7(),
    );
  }
}

class Home7 extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home7> {
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

              listMarkerIds.add(markerId1);
              listMarkerIds.add(markerId2);
              listMarkerIds.add(markerId3);

              Marker marker1 = Marker(
                  markerId: markerId1,
                  position: LatLng(42.844909, 74.617842),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'ВторПром', onTap: () {
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
                  position: LatLng(42.885524, 74.615889),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Эльдорадо', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet1("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker3 = Marker(
                  markerId: markerId3,
                  position: LatLng(42.849014, 74.608005),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Эко Комплекс', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet2("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              setState(() {
                markers[markerId1] = marker1;
                markers[markerId2] = marker2;
                markers[markerId3] = marker3;
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
              title: Text("Техника"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Джантошева, 96, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 555 471 817 \n+996 705 970 570"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 555 471 817");
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
            title: Text("Техника"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Ибраимова, 152, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 552 088 888 \n+996 772 028 888"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 552 088 888");
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
            title: Text("Техника"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Байтик Баатыра, 36а, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 312 901 114 \n+996 778 895 541"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 312 901 114");
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
