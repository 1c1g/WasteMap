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
      home: Home2(),
    );
  }
}

class Home2 extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home2> {
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
              MarkerId markerId6 = MarkerId("6");
              MarkerId markerId7 = MarkerId("7");
              MarkerId markerId8 = MarkerId("8");
              MarkerId markerId9 = MarkerId("9");
              MarkerId markerId10 = MarkerId("10");
              MarkerId markerId11 = MarkerId("11");
              MarkerId markerId12 = MarkerId("12");


              listMarkerIds.add(markerId1);
              listMarkerIds.add(markerId2);
              listMarkerIds.add(markerId3);
              listMarkerIds.add(markerId4);
              listMarkerIds.add(markerId5);
              listMarkerIds.add(markerId6);
              listMarkerIds.add(markerId7);
              listMarkerIds.add(markerId8);
              listMarkerIds.add(markerId9);
              listMarkerIds.add(markerId10);
              listMarkerIds.add(markerId11);
              listMarkerIds.add(markerId12);

              Marker marker1 = Marker(
                  markerId: markerId1,
                  position: LatLng(42.891146, 74.652908),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: '??????????', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker2 = Marker(
                  markerId: markerId2,
                  position: LatLng(42.873262, 74.569823),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "???????? ????????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet1("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));


              Marker marker3 = Marker(
                  markerId: markerId3,
                  position: LatLng(42.844909, 74.617842),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "????????????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet2("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker4 = Marker(
                  markerId: markerId4,
                  position: LatLng(42.848848, 74.544097),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "????????????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet3("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker5 = Marker(
                  markerId: markerId5,
                  position: LatLng(42.964883, 74.575438),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "??????????-????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet4("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker6 = Marker(
                  markerId: markerId6,
                  position: LatLng(42.880159, 74.568239),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "????????????????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet5("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker7 = Marker(
                  markerId: markerId7,
                  position: LatLng(42.878309, 74.567256),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "??????????????????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet6("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker8 = Marker(
                  markerId: markerId8,
                  position: LatLng(42.883611, 74.640325),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "??????????????????????????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet7("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker9 = Marker(
                  markerId: markerId9,
                  position: LatLng(42.872629, 74.571487),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "??????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet8("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker10 = Marker(
                  markerId: markerId10,
                  position: LatLng(42.857226, 74.601303),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "??????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet9("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker11 = Marker(
                  markerId: markerId11,
                  position: LatLng(42.805134, 74.568675),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "????????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet10("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              Marker marker12 = Marker(
                  markerId: markerId12,
                  position: LatLng(42.852562, 74.583799),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: "??????????", onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet11("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              },
                  snippet: "(?????????????? ?????? ?????????????????? ????????????????????)"
              ));

              setState(() {
                markers[markerId1] = marker1;
                markers[markerId2] = marker2;
                markers[markerId3] = marker3;
                markers[markerId4] = marker4;
                markers[markerId5] = marker5;
                markers[markerId6] = marker6;
                markers[markerId7] = marker7;
                markers[markerId8] = marker8;
                markers[markerId9] = marker9;
                markers[markerId10] = marker10;
                markers[markerId11] = marker11;
                markers[markerId12] = marker12;
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
              title: Text("????????????????????"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("????????????????????????, 124, ????????????"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 702 818 142"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 702 818 142");
            },
            child: const Text("??????????????????",
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
              title: Text("????????????????????"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("????????????????????/???????????? ????????????, ????????????"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 706 774 996 \n+996 703 311 421"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 706 774 996");
            },
            child: const Text("??????????????????",
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
              title: Text("????????????????????"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("????????????????????, 96, ????????????"),
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
            child: const Text("??????????????????",
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
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("????????-?????????? 21-??, ????????????"),
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
          child: const Text("??????????????????",
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
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("??????????-???????? 18-??, 17, ????????????"),
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
          child: const Text("??????????????????",
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

Widget getBottomSheet5(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("??????????????/??????, ????????????"),
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
          child: const Text("??????????????????",
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

Widget getBottomSheet6(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("??????????????, 21, ????????????"),
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
          child: const Text("??????????????????",
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

Widget getBottomSheet7(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("?????????? ????????????????, ??????????????????, ????????????"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 707 829 262"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 707 829 262");
          },
          child: const Text("??????????????????",
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

Widget getBottomSheet8(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("??????????????????????????, 256, ????????????"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 777 106 591 \n+996 709 087 552"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 777 106 591");
          },
          child: const Text("??????????????????",
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

Widget getBottomSheet9(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("??????????????????, 29, ????????????"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 505 250 964 \n+996 778 250 964"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 505 250 964");
          },
          child: const Text("??????????????????",
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

Widget getBottomSheet10(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("????????????????????, 509/7, ????????????"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 502 939 360 \n+996 773 939 360"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 502 939 360");
          },
          child: const Text("??????????????????",
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

Widget getBottomSheet11(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("????????????????????"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("???????? ??????????????????, 47, ????????????"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 708 339 513"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 708 339 513");
          },
          child: const Text("??????????????????",
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
