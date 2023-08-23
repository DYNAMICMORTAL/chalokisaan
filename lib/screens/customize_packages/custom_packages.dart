import 'package:chalokisaan/screens/customize_packages/user_data_storage.dart';
import 'package:flutter/material.dart';
import 'display_custom_data.dart'; // Import the display_custom_data.dart file


class CustomPackagesScreen extends StatefulWidget {
  @override
  _CustomPackagesScreenState createState() => _CustomPackagesScreenState();
}

class _CustomPackagesScreenState extends State<CustomPackagesScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  String _name = "";
  String _mobileNumber = "";
  String _email = "";

  void submitForm(BuildContext context) {
  if (_formKey.currentState?.validate() ?? false) {
    _formKey.currentState!.save();

    // Store user data in UserDataStorage
    UserDataStorage.name = _name;
    UserDataStorage.mobileNumber = _mobileNumber;
    UserDataStorage.email = _email;

    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Form submitted successfully!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Packages"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Mobile Number'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _mobileNumber = value!;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  // You can add more advanced email validation logic here if needed
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () => submitForm(context),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
