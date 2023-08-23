import 'package:flutter/material.dart';

class DisplayCustomDataScreen extends StatelessWidget {
  final String name;
  final String mobileNumber;
  final String email;

  DisplayCustomDataScreen({
    required this.name,
    required this.mobileNumber,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Custom Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: ${name ?? 'N/A'}', // Provide a default value if name is null
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Mobile Number: ${mobileNumber ?? 'N/A'}', // Provide a default value if mobileNumber is null
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Email: ${email ?? 'N/A'}', // Provide a default value if email is null
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
