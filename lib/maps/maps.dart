import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';

import 'maps_widget.dart';

class TouristAttractionsScreen extends StatefulWidget {
  @override
  _TouristAttractionsScreenState createState() =>
      _TouristAttractionsScreenState();
}

class _TouristAttractionsScreenState extends State<TouristAttractionsScreen> {
  final _googlePlace = GooglePlace(
      'AIzaSyD7Mxkn50FGLO9ZBeK8bnKQG2p948-4A6U');
  final TextEditingController _cityNameController = TextEditingController();
  List<SearchResult> _touristAttractions = [];
  GoogleMapController? _mapController;
  Map<MarkerId, Marker> _markers = {};

  void _fetchTouristAttractions() async {
    final cityName = _cityNameController.text;
    if (cityName.isNotEmpty) {
      final response = await _googlePlace.search.getTextSearch(
        'Tourist attractions in $cityName',
      );

      if (response?.status == 'OK') {
        setState(() {
          _touristAttractions = response!.results!;
        });
      }
    }
  }

  void _onListItemTap(int index) {
    if (_mapController != null) {
      final attraction = _touristAttractions[index];
      final markerId = MarkerId(attraction.placeId ?? '');

      final newMarker = Marker(
        markerId: markerId,
        position: LatLng(
          attraction.geometry?.location?.lat ?? 0.0, // Use a default value or handle null appropriately
          attraction.geometry?.location?.lng ?? 0.0, // Use a default value or handle null appropriately
        ),
        infoWindow: InfoWindow(title: attraction.name),
      );

      setState(() {
        _markers[markerId] = newMarker;
      });

      _mapController!.animateCamera(CameraUpdate.newLatLng(newMarker.position));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hidden Gems'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: TextField(
              controller: _cityNameController,
              decoration: InputDecoration(
                labelText: 'Enter City Name',
                suffixIcon: IconButton(
                  onPressed: _fetchTouristAttractions,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _touristAttractions.length,
              itemBuilder: (context, index) {
                final attraction = _touristAttractions[index];
                return ListTile(
                  title: Text(attraction.name ?? ''),
                  subtitle: Text(attraction.vicinity ?? ''),
                  onTap: () {
                    _onListItemTap(index);
                  },
                );
              },
            ),
          ),
          Expanded(
            child: MapsOverview(
              onMapCreated: (controller) {
                setState(() {
                  _mapController = controller;
                });
              },
              markers: _markers.values.toSet(),
            ),
          ),
        ],
      ),
    );
  }
}
