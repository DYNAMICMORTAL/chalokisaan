import 'package:flutter/material.dart';

import '../../utils/style.dart';
import 'confirm.dart';


class CalenderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingPage(),
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
        backgroundColor: Color(0xFFF14453D),
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
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF354A21),
              ),
              onPressed: () => _selectDate(context),
              child: Text('Pick Date'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF607D3B),
              ),
              onPressed: () {
                // Implement your booking confirmation logic here
                Navigator.push(context, MaterialPageRoute(builder: (context) => AcknowledgementPage()));
              },
              child: Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
