import 'package:google_maps_webservice/places.dart';

class PlacesService {
  final places = GoogleMapsPlaces(apiKey: 'YOUR_API_KEY');

  Future<List<PlacesSearchResult>> getTouristAttractions(String cityName) async {
    final response = await places.searchByText('Tourist attractions in $cityName');

    if (response.isOkay) {
      return response.results;
    } else {
      throw Exception('Failed to fetch tourist attractions');
    }
  }
}
