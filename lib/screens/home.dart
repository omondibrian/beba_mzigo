import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlong;

import '../widgets/defultInput/inputField.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final TextEditingController queryTextController = TextEditingController();

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Cannot query a null value';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height ,
      child: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: latlong.LatLng(-1.2921, 36.8219),
              zoom: 13.0,
            ),
            layers: [
              TileLayerOptions(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/brianomondi/cksboxzm1boar17q6p3y0ezfb/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYnJpYW5vbW9uZGkiLCJhIjoiY2tzYm8zcW05MDhxbjJvcWsyMnlra244bCJ9.TDxC8cAZEvsIy_JXQFDQlA",
                  additionalOptions: {
                    'accesstoken':
                        'pk.eyJ1IjoiYnJpYW5vbW9uZGkiLCJhIjoiY2tzYm8zcW05MDhxbjJvcWsyMnlra244bCJ9.TDxC8cAZEvsIy_JXQFDQlA',
                    'id': 'mapbox.mapbox-streets-v8'
                  }),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: latlong.LatLng(-1.2921, 36.8219),
                    builder: (ctx) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize: 45.0,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            child: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              // title: Text('BebaMzigo'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                )
              ],
              automaticallyImplyLeading: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/rating');
                },
                icon: Icon(Icons.menu),
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width * 0.9,
            left: 15,
            top: 80,
            child: DefaultInput(
                hintText: '16th avenue, 4th Cross Street,Chennai',
                controller: queryTextController,
                validator: validator,
                icon: Icons.location_on),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width * 0.9,
            left: 15,
            bottom: 5,
            child: DefaultInput(
                hintText: 'Destination Please...?',
                controller: queryTextController,
                validator: validator,
                icon: Icons.send_outlined),
          )
        ],
      ),
    ));
  }
}
