import 'package:flutter/material.dart';
import '../models/poster_model.dart'; // Import your actual data models

class FarmerPosterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Posters'),
      ),
      body: FutureBuilder<List<FarmerPoster>>(
        future: fetchPostersLocally(), // Replace with your fetching method
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<FarmerPoster> posters = snapshot.data!;
            return ListView.builder(
              itemCount: posters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(posters[index].title),
                  subtitle: Text(posters[index].description),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<FarmerPoster>> fetchPostersLocally() async {
    // Simulate a delay, like you would have with a real API call
    await Future.delayed(Duration(seconds: 2));

    // Here, you would retrieve your farmer poster data from your local data source
    // Replace this with your actual data retrieval logic
    return [ // Replace with actual farmer poster data
      FarmerPoster(1, 'Poster 1', 'Description of Poster 1'),
      FarmerPoster(2, 'Poster 2', 'Description of Poster 2'),
    ];
  }
}
