import 'package:chalokisaan/utils/custom_button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/style.dart';
import 'calender_view.dart';

class ExPackages3 extends StatelessWidget {
  const ExPackages3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF14453D),
        title: Center(
        child: Text(
        "Ratnagiri Coastal Farm Getaway Package", style: TextStyle(overflow: TextOverflow.ellipsis, color: Colors.white, fontWeight: FontWeight.w700),

    ),
    ),),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          width: MediaQuery.of(context).size.width*0.90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About the Package: →", style: Styles.headlineStyle2,),
              const Gap(20),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Text("Location: Ratnagiri, Maharashtra", style: Styles.headlineStyle3,),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Text("Duration: 2 Days, 1 Night", style: Styles.headlineStyle3,),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(
                            child: Text("Visit to organic farms and coconut groves", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Fishing experience with local fishermen", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Guided tour of cashew nut processing units", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Accommodation in eco-friendly cottages", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Meals: Local seafood-based meals", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Charges: 1,999 per person", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Additional Options (not included in package):", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Text("Boat ride to nearby islands", style: Styles.headlineStyle3,),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  JustAButton(text: "Go Ahead", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderView()));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
