import 'package:chalokisaan/utils/custom_button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/style.dart';
import 'calender_view.dart';

class ExPackages2 extends StatelessWidget {
  const ExPackages2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF14453D),
        title: Center(
        child: Text(
        "Mahabaleshwar Strawberry Festival Package", style: TextStyle(overflow: TextOverflow.ellipsis, color: Colors.white, fontWeight: FontWeight.w700),

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
                        Text("Location: Mahabaleshwar, Maharashtra", style: Styles.headlineStyle3,),
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
                            child: Text("Guided tour of renowned vineyards and wineries", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Wine tasting sessions with experts", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Interactive workshops on grape cultivation and winemaking", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Accommodation in a vineyard ", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Meals: Breakfast, lunch, and strawberry-themed dinner", style: Styles.headlineStyle3,)),
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
                        Text("Horseback riding in the hills", style: Styles.headlineStyle3,),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  JustAButton(text: "Go Ahead",  onPressed: () {
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
