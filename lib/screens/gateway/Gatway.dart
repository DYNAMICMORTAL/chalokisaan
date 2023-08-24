// import 'package:flutter/material.dart';
//
// class Gateway extends StatelessWidget {
//   final String title;
//   final String details;
//   final double amount;
//   final String attractionName;
//   final String attractionDescription;
//
//   Gateway({
//     required this.title,
//     required this.details,
//     required this.amount,
//     required this.attractionName,
//     required this.attractionDescription,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirmation'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Title:',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(title),
//               SizedBox(height: 16.0),
//               Text(
//                 'Details:',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(details),
//               SizedBox(height: 16.0),
//               Text(
//                 'Amount:',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text('\$$amount'),
//               SizedBox(height: 16.0),
//               Text(
//                 'Attraction Name:',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(attractionName),
//               SizedBox(height: 16.0),
//               Text(
//                 'Attraction Description:',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(attractionDescription),
//               SizedBox(height: 32.0),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Add your payment logic here
//                     // This button will trigger the payment process
//                   },
//                   child: Text('Pay Now'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: ConfirmPage(
//       title: 'Nashik Vineyard Experience Project',
//       details:
//       'About the Package: →\n\n◉ Location: Nashik, Maharashtra\n\n◉ Duration: 2 Days, 1 Night\n\n◉ Guided tour of renowned vineyards and wineries\n\n◉ Wine tasting sessions with experts',
//       amount: 5000,
//       attractionName: 'Aditi M',
//       attractionDescription: 'Agrotourism',
//     ),
//   ));
// }
