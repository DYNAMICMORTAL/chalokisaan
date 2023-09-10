// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:gap/gap.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:custom_info_window/custom_info_window.dart';
//
// import '../utils/style.dart';
//
// const String google_api_key = 'AIzaSyD7Mxkn50FGLO9ZBeK8bnKQG2p948-4A6U';
//
// class MapsOverview extends StatefulWidget {
//   const MapsOverview({Key? key}) : super(key: key);
//
//   @override
//   State<MapsOverview> createState() => _MapsOverviewState();
// }
//
// class _MapsOverviewState extends State<MapsOverview> {
//   late GoogleMapController _mapController;
//   Map<String, Marker> _markers = {};
//
//   CustomInfoWindowController _customInfoWindowController = CustomInfoWindowController();
//
//
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             initialCameraPosition: const CameraPosition(
//               target: LatLng(19.175763, 72.946449), // Set an initial location
//               zoom: 15,
//             ),
//
//             onTap: (position) {
//               _customInfoWindowController.hideInfoWindow!();
//             },
//             onMapCreated: (GoogleMapController controller) {
//               _mapController = controller;
//               _customInfoWindowController.googleMapController = controller;
//             },
//             onCameraMove: (position) {
//               _customInfoWindowController.onCameraMove!();
//             },
//             markers: _markers.values.toSet(),
//           ),
//           CustomInfoWindow(controller: _customInfoWindowController, height: 120, width: 250),
//         ],
//       ),
//     );
//   }
//
//
// }










import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsOverview extends StatefulWidget {
  final Function(GoogleMapController) onMapCreated;
  final Set<Marker> markers;

  MapsOverview({required this.onMapCreated, required this.markers});

  @override
  State<MapsOverview> createState() => _MapsOverviewState();
}

class _MapsOverviewState extends State<MapsOverview> {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: LatLng(19.175763, 72.946449), // Set an initial location
        zoom: 15,
      ),
      onTap: (position) {
        // Handle map tap here if needed
      },
      onMapCreated: widget.onMapCreated,
      markers: widget.markers,
    );
  }
}
