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
      home: Home5(),
    );
  }
}

class Home5 extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home5> {
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


              listMarkerIds.add(markerId1);

              Marker marker1 = Marker(
                  markerId: markerId1,
                  position: LatLng(42.861514, 74.632938),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed), infoWindow: InfoWindow(
                  title: 'Флюид', onTap: () {
                var bottomSheetController = scaffoldKey.currentState
                    ?.showBottomSheet((context) =>
                    Container(
                      child: getBottomSheet("17.4435, 78.3772"),
                      height: 250,
                      color: Colors.transparent,
                    ));
              }, snippet: "(Нажмите для подробной информации)"
              ));

              setState(() {
                markers[markerId1] = marker1;
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
              title: Text("Органика"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("7 апреля, 1а/2, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 559 000 104 \n+996 312 533 766"),
              leading: Icon(Icons.local_phone)
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            onPressed: (){
              launch ("tel:+996 559 000 104");
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
