
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app/maps/get_user_location.dart';

// class MyMap extends StatelessWidget {
//   const MyMap({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin:const  EdgeInsets.all(16),
//       child: const PlacesMap(),
//     );
//   }
// }


class PlacesMap extends StatefulWidget {
  const PlacesMap({super.key});

  @override
  State<PlacesMap> createState() => _PlacesMapState();
}

class _PlacesMapState extends State<PlacesMap> {

  LocationData? _userLocation;    // user

  @override                      // user
  void initState(){
    super.initState();
    _getUserLocation();
  }

  Future<void> _getUserLocation() async {    // user
    LocationData? userlocation = await LocationService.getUserLocation();
    if(userlocation != null){
      setState(() {
        _userLocation = userlocation;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

   const  List<Marker>   marker =   [
       Marker(
        point: LatLng(18.932245 , 72.826439),
         child: FittedBox(
           child: Row(
              children: [
             Icon(Icons.emoji_flags_rounded,color: Colors.red,size: 150,),
              SizedBox(width: 7,),
             Text('hello ',)
              ],
             ),
         ),
         
         ),
         Marker(
          width: 50,
          height: 50,
        point: LatLng(18.954269, 72.811501),
          child: Icon(Icons.emoji_flags_rounded,color: Colors.red,),
          ),
      Marker(
        point: LatLng(18.954269, 72.811501),
         child: Icon(Icons.emoji_flags_rounded,color: Colors.red,),
         ),
      Marker(
        point: LatLng( 19.095499 , 72.828055),
         child: Icon(Icons.emoji_flags_outlined,color: Colors.red,),
         ),
      Marker(
        point: LatLng(18.963253, 72.931442),
         child: Icon(Icons.emoji_flags_rounded,color:Color.fromARGB(255, 246, 27, 27),),
         ),
      Marker(
        point: LatLng(18.9524563,  72.8174395),
         child: Icon(Icons.emoji_flags_rounded,color: Colors.red,),
         ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Maps')),
      body: FlutterMap(
          options:  MapOptions(
        // initialCenter: LatLng(19.076090, 72.877426),
        initialCenter: _userLocation != null      // user
                       ?  LatLng(_userLocation!.latitude!, _userLocation!.longitude!)
                       :const  LatLng(19.076090, 72.877426),
       
        initialZoom: 10,
        
      ),
      children: [
        TileLayer(
          // urlTemplate: 'https://api.mapbox.com/v4/mapbox.satellite/{z}/{x}/{y}.jpg?access_token=pk.eyJ1IjoibXJmLTU2IiwiYSI6ImNscTZneXc3bjBoam4yaXA3Ynp6em1oZzAifQ.K8YjVrF_V-HijHMhAUIhUg',  // satellite view
          // urlTemplate: 'https://api.mapbox.com/styles/v1/mrf-56/clq6hbg58000g01qrgcglgdxh/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibXJmLTU2IiwiYSI6ImNscTZneXc3bjBoam4yaXA3Ynp6em1oZzAifQ.K8YjVrF_V-HijHMhAUIhUg', // 1st map used 
          urlTemplate: 'https://api.mapbox.com/styles/v1/mrf-56/clqbzm7jr005v01r55qwv0niu/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibXJmLTU2IiwiYSI6ImNscTZneXc3bjBoam4yaXA3Ynp6em1oZzAifQ.K8YjVrF_V-HijHMhAUIhUg',
          userAgentPackageName: 'com.example.app',
          additionalOptions:const  {
            // 'accessToken':'pk.eyJ1IjoibXJmLTU2IiwiYSI6ImNscTZneXc3bjBoam4yaXA3Ynp6em1oZzAifQ.K8YjVrF_V-HijHMhAUIhUg',  // 1st
            'accessToken':'pk.eyJ1IjoibXJmLTU2IiwiYSI6ImNscTZneXc3bjBoam4yaXA3Ynp6em1oZzAifQ.K8YjVrF_V-HijHMhAUIhUg',
            // 'id':'mrf-56.clq6jt0fy2x1k1up8hibk46wr-621pc',  // 1st  
            'id':'mapbox://styles/mrf-56/clqbzm7jr005v01r55qwv0niu',   
            // 'id':'mapbox.satellite-streets-v11',   // satellite view
          },
        ),
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
            ),
          ],
        ),
          // const MarkerLayer(
          //    markers:marker,
          //   //  markers: [
          //   //   Marker(
          //   //     point:  LatLng(51.509364, -0.128928), 
          //   //     child: Icon(Icons.pin_drop)
          //   //     ),
          //   //  ],
          //   ),

          const MarkerLayer(markers: marker),
      ],
      ),
    );
  }
}