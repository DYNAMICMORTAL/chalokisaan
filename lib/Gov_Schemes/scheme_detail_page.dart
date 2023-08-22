import 'package:flutter/material.dart';
import '../utils/style.dart';

class SchemeDetailPage extends StatelessWidget {
  final String state;
  final String title;
  final String description;
  final String schemeDuration;
  final String intendedBeneficiaries;
  final String benefits;
  final String howToApply;
  final String requiredDocuments;

  SchemeDetailPage({
    required this.state,
    required this.title,
    required this.description,
    required this.schemeDuration,
    required this.intendedBeneficiaries,
    required this.benefits,
    required this.howToApply,
    required this.requiredDocuments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: Styles.headlineStyle2,
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: Styles.textStyle,
            ),
            SizedBox(height: 16),
            Text(
              "Scheme Duration",
              style: Styles.headlineStyle2,
            ),
            SizedBox(height: 8),
            Text(
              schemeDuration,
              style: Styles.textStyle,
            ),
            SizedBox(height: 16),
            Text(
              "Intended Beneficiaries",
              style: Styles.headlineStyle2,
            ),
            SizedBox(height: 8),
            Text(
              intendedBeneficiaries,
              style: Styles.textStyle,
            ),
            SizedBox(height: 16),
            Text(
              "Benefits",
              style: Styles.headlineStyle2,
            ),
            SizedBox(height: 8),
            Text(
              benefits,
              style: Styles.textStyle,
            ),
            SizedBox(height: 16),
            Text(
              "How to Apply",
              style: Styles.headlineStyle2,
            ),
            SizedBox(height: 8),
            Text(
              howToApply,
              style: Styles.textStyle,
            ),
            SizedBox(height: 16),
            Text(
              "Required Documents",
              style: Styles.headlineStyle2,
            ),
            SizedBox(height: 8),
            Text(
              requiredDocuments,
              style: Styles.textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
