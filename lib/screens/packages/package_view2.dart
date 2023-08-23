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
        backgroundColor: Color(0xFFF14453D),
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Expanded(
            child: Text(
              "Mahabaleshwar Strawberry Festival", style: TextStyle(overflow: TextOverflow.ellipsis, color: Colors.white, fontWeight: FontWeight.w700),

            ),
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
                        Expanded(child: Text("Location: Mahabaleshwar, Maharashtra", style: Styles.headlineStyle3,)),
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
                            child: Text("Participation in the annual strawberry festival", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Strawberry picking and farm tour", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Jam-making workshops", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Scenic trek to viewpoints", style: Styles.headlineStyle3,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Expanded(child: Text("Accommodation in a hillside resort", style: Styles.headlineStyle3,)),
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
                        Text("Horseback riding in the hills", style: Styles.headlineStyle3,),
                      ],
                    ),
                    Row(
                      children: [
                        Text("◉"),
                        const Gap(10),
                        Text("Spa and wellness treatments", style: Styles.headlineStyle3,),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFF32612D)),onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderView()));
                  },
                    child: Text("Go Ahead", style: TextStyle(color: Colors.white),),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
