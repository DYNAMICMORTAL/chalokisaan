import 'package:flutter/material.dart';
import '../mockdata/mock_data.dart';
import '../models/video_model.dart'; // Import your actual data models

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Videos'),
      ),
      body: FutureBuilder<List<Video>>(
        future: fetchVideosLocally(), // Replace with your fetching method
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<Video> videos = snapshot.data!;
            return ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(videos[index].title),
                  subtitle: Text(videos[index].url),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<Video>> fetchVideosLocally() async {
    // Simulate a delay, like you would have with a real API call
    await Future.delayed(Duration(seconds: 2));

    // Here, you would retrieve your video data from your local data source
    // For this example, we'll use the mock data
    return MockData.videoData
        .map((data) => Video(data['id'], data['title'], data['url']))
        .toList();
  }
}