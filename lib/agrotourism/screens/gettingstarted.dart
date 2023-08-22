import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getting Started with Agrotourism'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Research and Planning',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Start by researching agrotourism and understanding what it entails...',
            ),
            SizedBox(height: 20),

            Text(
              '2. Legal and Regulatory Compliance',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Check local regulations and zoning laws to ensure that agrotourism activities are allowed on your property...',
            ),
            SizedBox(height: 20),

            Text(
              '3. Develop a Business Plan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Create a detailed business plan outlining your agrotourism venture\'s goals...',
            ),
            SizedBox(height: 20),

            // Add more sections for each step in the process

            Text(
              '12. Networking',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Connect with other farmers and agrotourism operators in your area to share ideas and best practices...',
            ),
            SizedBox(height: 20),

            // Add a button to navigate back to the home screen or other relevant screens
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous screen
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
