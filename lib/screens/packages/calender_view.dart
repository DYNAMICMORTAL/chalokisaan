import 'package:flutter/material.dart';

import '../../utils/style.dart';
import '../payments/aknowledge.dart';
import '../payments/confirm_details.dart';


class CalenderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingPage(),
      debugShowCheckedModeBanner: false, 
    );
  }
}

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
  
}

class _BookingPageState extends State<BookingPage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Booking Details'),
        backgroundColor: Styles.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected Date:',
              style: Styles.headlineStyle1,
            ),
            SizedBox(height: 10),
            Text(
              '${selectedDate.toLocal()}'.split(' ')[0],
              style: Styles.headlineStyle1,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Pick Date'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
            // Navigate to the ConfirmOrderPage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AcknowledgementPage(),
              ),
            );
          },

              child: Text('Continue to AKnowledgement'),
            ),
          ],
        ),
      ),
    );
  }
}
