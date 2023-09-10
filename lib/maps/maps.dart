import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';

class TouristAttractionsScreen extends StatefulWidget {
  @override
  _TouristAttractionsScreenState createState() => _TouristAttractionsScreenState();
}

class _TouristAttractionsScreenState extends State<TouristAttractionsScreen> {
  final _googlePlace = GooglePlace('AIzaSyD7Mxkn50FGLO9ZBeK8bnKQG2p948-4A6U');
  final TextEditingController _cityNameController = TextEditingController();
  List<SearchResult> _touristAttractions = [];

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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
