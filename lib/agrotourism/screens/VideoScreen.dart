import 'package:chalokisaan/agrotourism/screens/video_screen.dart';
import 'package:flutter/material.dart';

import 'ArticleScreen.dart';
import 'FarmerPosterScreen.dart';
import 'ServiceScreen.dart';

class DisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agrotourism Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen()));
              },
              child: Text('Educational Videos'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleScreen()));
              },
              child: Text('Educational Articles'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FarmerPosterScreen()));
              },
              child: Text('Farmer Posters'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceScreen()));
              },
              child: Text('Services'),
            ),
          ],
        ),
      ),
    );
  }
}
