import 'package:flutter/material.dart';
import '../models/service_model.dart'; // Import your actual data models

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
      ),
      body: FutureBuilder<List<Service>>(
        future: fetchServicesLocally(), // Replace with your fetching method
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<Service> services = snapshot.data!;
            return ListView.builder(
              itemCount: services.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(services[index].name),
                  subtitle: Text(services[index].description),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<Service>> fetchServicesLocally() async {
    // Simulate a delay, like you would have with a real API call
    await Future.delayed(Duration(seconds: 2));

    // Here, you would retrieve your service data from your local data source
    // Replace this with your actual data retrieval logic
    return [ // Replace with actual service data
      Service(1, 'Service 1', 'Description of Service 1', 25.0),
      Service(2, 'Service 2', 'Description of Service 2', 30.0),
    ];
  }
}
