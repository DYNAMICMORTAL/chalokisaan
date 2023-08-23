import 'package:flutter/material.dart';

class AcknowledgementPage extends StatefulWidget {
  @override
  _AcknowledgementPageState createState() => _AcknowledgementPageState();
}

class _AcknowledgementPageState extends State<AcknowledgementPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acknowledgement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Acknowledgement',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'There are various types of fertilizers available, including:',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              _buildFertilizerType('Organic Fertilizers',
                  'These are made from natural sources such as compost, manure, and plant materials. They improve soil fertility and promote healthy plant growth.'),
              _buildFertilizerType('Inorganic Fertilizers',
                  'Also known as synthetic or chemical fertilizers, these are manufactured using minerals or chemical compounds. They provide specific nutrients to plants and are usually formulated with a precise nutrient ratio.'),
              _buildFertilizerType('Slow-release Fertilizers',
                  'These fertilizers release nutrients gradually over an extended period. They provide a continuous supply of nutrients to the plants and reduce the risk of fertilizer burn.'),
              _buildFertilizerType('Liquid Fertilizers',
                  'These are in liquid form and are applied directly to the plants\' roots or foliage. They are quickly absorbed by the plants and provide an immediate nutrient boost.'),
              _buildFertilizerType('Granular Fertilizers',
                  'These are solid fertilizers in granule form. They are spread on the soil surface and release nutrients slowly as they dissolve with moisture.'),
              _buildFertilizerType('Foliar Fertilizers',
                  'These are applied as a spray onto the leaves of plants. They are absorbed through the leaf surface and provide nutrients directly to the plant for immediate use.'),

              SizedBox(height: 16.0),
              Text(
                'It\'s important to consider the specific needs of your plants and the soil conditions before choosing a fertilizer.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),

              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Text('I have read the acknowledgment carefully'),
                ],
              ),

              // ElevatedButton(
              //   onPressed: _isChecked
              //       ? () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => ConfirmOrderPage(
              //                 title: 'Nashik Vineyard Experience Project',
              //                 details:
              //                     'About the Package: →\n\n◉ Location: Nashik, Maharashtra\n\n◉ Duration: 2 Days, 1 Night\n\n◉ Guided tour of renowned vineyards and wineries\n\n◉ Wine tasting sessions with experts',
              //                 amount: 5000,
              //               ),
              //             ),
              //           );
              //         }
              //       : null,
              //   child: Text('Confirm Order'),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFertilizerType(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(description, style: TextStyle(fontSize: 16.0)),
        SizedBox(height: 16.0),
      ],
    );
  }
}