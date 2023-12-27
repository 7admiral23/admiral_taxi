import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widgets/bottom_tool_bar.dart';
import '../widgets/map_zoom_button.dart';
import '../widgets/my_location_button.dart';

class HomeScreen extends StatelessWidget {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController? _newControllerGoogleMap;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.7727382642259, 14.790845434949222),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          onMapCreated: (GoogleMapController controller) {
            _controllerGoogleMap.complete(controller);
            _newControllerGoogleMap = controller;
          },
        ),
        Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [mapZoom(), MyLocation(), BottomToolBar()],
              ),
            )
          ],
        )
      ]),
    );
  }
}
