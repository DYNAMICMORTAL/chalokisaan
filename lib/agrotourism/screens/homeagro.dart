import 'package:flutter/material.dart';

class AgroHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agrotourism Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the "Learn" screen
                Navigator.pushNamed(context, '/learn');
              },
              child: Text('Learn'),
            ),
            SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the "How to Get Started" screen
                Navigator.pushNamed(context, '/get_started');
              },
              child: Text('How to Get Started'),
            ),
            SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the "Services" screen
                Navigator.pushNamed(context, '/services');
              },
              child: Text('Services'),
            ),
          ],
        ),
      ),
    );
  }
}
