import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMaps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyMapsState();
  }

}
class MyMapsState extends State<MyMaps>{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(42.876452, 74.603601),
    zoom: 10,
  );
  List<MarkerId>listMarkerIds=List<MarkerId>.empty(growable: true);
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
          child: GoogleMap(initialCameraPosition: _kGooglePlex,
            zoomGesturesEnabled: true,
            mapType: MapType.normal,
            markers: Set<Marker>.of(markers.values),

            onMapCreated: (GoogleMapController controller){
              _controller.complete(controller);

              MarkerId markerId1 = MarkerId("1");
              MarkerId markerId2 = MarkerId("2");
              MarkerId markerId3 = MarkerId("3");
              MarkerId markerId5 = MarkerId("5");
              MarkerId markerId6 = MarkerId("6");
              MarkerId markerId7 = MarkerId("7");
              MarkerId markerId8 = MarkerId("8");
              MarkerId markerId9 = MarkerId("9");
              MarkerId markerId10 = MarkerId("10");



              listMarkerIds.add(markerId1);
              listMarkerIds.add(markerId2);
              listMarkerIds.add(markerId3);
              listMarkerIds.add(markerId5);
              listMarkerIds.add(markerId6);
              listMarkerIds.add(markerId7);
              listMarkerIds.add(markerId8);
              listMarkerIds.add(markerId9);
              listMarkerIds.add(markerId10);

              Marker marker1=Marker(
                  markerId: markerId1,
                  position: LatLng(42.964989,74.575648),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: 'Калыс-Ордо' ,onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));

              },snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker2=Marker(
                  markerId: markerId2,
                  position: LatLng(42.878309, 74.567256),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: "Мамбеталиев",onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet1("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));


              Marker marker3=Marker(
                  markerId: markerId3,
                  position: LatLng(42.878197,74.564272),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: "Баймаханов",onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet2("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker5=Marker(
                  markerId: markerId5,
                  position: LatLng(42.872721,74.563829),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: "Парк Фучика",onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet3("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker6=Marker(
                  markerId: markerId6,
                  position: LatLng(42.868738,74.570244),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: "Нурлан",onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet4("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker7=Marker(
                  markerId: markerId7,
                  position: LatLng(42.862378,74.562958),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: "Тынчтык",onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet5("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker8=Marker(
                  markerId: markerId8,
                  position: LatLng(42.84875,74.543659),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: "Круговой",onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet6("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              Marker marker9=Marker(
                  markerId: markerId9,
                  position: LatLng(42.844821,74.584009),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),infoWindow: InfoWindow(
                  title: "Марат",onTap: (){
                var  bottomSheetController=scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  child: getBottomSheet7("17.4435, 78.3772"),
                  height: 250,
                  color: Colors.transparent,
                ));
              },
                  snippet: "(Нажмите для подробной информации)"
              ));

              setState(() {
                markers[markerId1]=marker1;
                markers[markerId2]=marker2;
                markers[markerId3]=marker3;
                markers[markerId5]=marker5;
                markers[markerId6]=marker6;
                markers[markerId7]=marker7;
                markers[markerId8]=marker8;
                markers[markerId9]=marker9;
              });
            },

          ),
        )
    );
  }

  Widget getBottomSheet(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, полиэтилен"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Калыс-Ордо, 17, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 559 48 68 70"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }


  Widget getBottomSheet1(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, полиэтилен, макулатура"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Павлова 21, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 707 86 19 58"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }

  Widget getBottomSheet2(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, полиэтилен, макулатура, стекло, металл"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Чкалова/Чуй, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 779 69 68 11"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }

  Widget getBottomSheet3(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, макулатура, стекло"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Московская/Юлиуса Фучика, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 709 09 09 75"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }

  Widget getBottomSheet4(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, стекло"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Боконбаева 1/2, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 708 86 19 45"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }

  Widget getBottomSheet5(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, макулатура, стекло"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Матыева 44, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 502 06 65 02"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }

  Widget getBottomSheet6(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, металл"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Район 4-гор. больницы, Айни, Арча-Бешик, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 708 37 31 16"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }

  Widget getBottomSheet7(String s){
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(
        //),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text("Пластиковые изделия, макулатура, стекло, полиэтилен"),
              leading: Icon(Icons.assignment)
          ),
          ListTile(
              title: Text("Шота Руставели 46, Бишкек"),
              leading: Icon(Icons.place)
          ),
          ListTile(
              title: Text("+996 222 29 56 77"),
              leading: Icon(Icons.local_phone)
          ),
        ],
      ),
    );
  }
}