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
      home: Home6(),
    );
  }
}

class Home6 extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home6> {
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
              MarkerId markerId13 = MarkerId("13");
              MarkerId markerId14 = MarkerId("14");
              MarkerId markerId15 = MarkerId("15");
              MarkerId markerId16 = MarkerId("16");
              MarkerId markerId17 = MarkerId("17");


              listMarkerIds.add(markerId1);
              listMarkerIds.add(markerId2);

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
                  position: LatLng(42.875216, 74.541528),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Кызыл Аскер', onTap: () {
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
                  position: LatLng(42.878167, 74.564263),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Баймаханов', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet2("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker4 = Marker(
                  markerId: markerId4,
                  position: LatLng(42.865488, 74.695389),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Триод', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet3("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker5 = Marker(
                  markerId: markerId5,
                  position: LatLng(42.852005, 74.548899),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet4("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker6 = Marker(
                  markerId: markerId6,
                  position: LatLng(42.905075, 74.573828),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet5("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker7 = Marker(
                  markerId: markerId7,
                  position: LatLng(42.907396, 74.572358),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet6("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker8 = Marker(
                  markerId: markerId8,
                  position: LatLng(42.805333, 74.568497),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet7("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker9 = Marker(
                  markerId: markerId9,
                  position: LatLng(42.89316, 74.597114),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet8("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker10 = Marker(
                  markerId: markerId10,
                  position: LatLng(42.894554, 74.593914),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet9("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker11 = Marker(
                  markerId: markerId11,
                  position: LatLng(42.891707, 74.601053),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet10("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker12 = Marker(
                  markerId: markerId12,
                  position: LatLng(42.884776, 74.554879),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet11("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker13 = Marker(
                  markerId: markerId13,
                  position: LatLng(42.864467, 74.648409),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet12("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker14 = Marker(
                  markerId: markerId14,
                  position: LatLng(42.892841, 74.597597),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet13("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker15 = Marker(
                  markerId: markerId15,
                  position: LatLng(42.854059, 74.664562),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet14("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker16 = Marker(
                  markerId: markerId16,
                  position: LatLng(42.857083, 74.601192),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet15("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker17 = Marker(
                  markerId: markerId17,
                  position: LatLng(42.862708, 74.60056),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Пункт приема', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet16("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
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
                markers[markerId13] = marker13;
                markers[markerId14] = marker14;
                markers[markerId15] = marker15;
                markers[markerId16] = marker16;
                markers[markerId17] = marker17;
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
              title: Text("Металл"),
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Ден Сяопина, 162, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 500 507 074 \n+996 774 471 070"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 500 507 074");
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
            title: Text("Металл"),
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Шабдан Баатыра, 7, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 312 531 133"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 312 531 133");
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Гагарина, 242, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 702 359 095"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 702 359 095");
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Махатмы Ганди, 390/1, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 559 779 927"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 559 779 927");
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Курулуш, 59, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 777 031 464 \n+996 700 031 464"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 777 031 464");
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Садырбаева, 509/8, Бишкек"),
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Осипенко, 1, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 708 557 353"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 708 557 353");
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Исанова, 223, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 708 557 353"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 708 557 353");
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Панфилова, 294, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 550 299 960 \n+996 774 973 149"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 550 299 960");
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
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Юлиуса Фучика, 64/1, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 551 551 420"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 551 551 420");
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

Widget getBottomSheet12(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("переулок Менделеева, 64а, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 703 519 461 \n+996 709 720 615"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 703 519 461");
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

Widget getBottomSheet13(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Тоголок Молдо, 99, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 507 606 655 \n+996 774 993 833"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 507 606 655");
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

Widget getBottomSheet14(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Алтын-Ордо 1-я, 1/8, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 556 924 192 \n+996 774 993 844"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 556 924 192");
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

Widget getBottomSheet15(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Максима Горького, 85, Бишкек"),
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

Widget getBottomSheet16(String s) {
  return Container(
    decoration: BoxDecoration(
      //border: Border.all(
      //),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
            title: Text("Металл"),
            leading: Icon(Icons.assignment)
        ),
        ListTile(
            title: Text("Льва Толстого, 58а, Бишкек"),
            leading: Icon(Icons.place)
        ),
        ListTile(
            title: Text("+996 505 822 847"),
            leading: Icon(Icons.local_phone)
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(
          onPressed: (){
            launch ("tel:+996 505 822 847");
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