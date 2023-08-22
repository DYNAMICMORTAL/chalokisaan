import 'package:chalokisaan/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WomenOverview extends StatelessWidget {
  const WomenOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        title: Center(
        child: Text(
        "Mahila Yojanas",
        style: Styles.headlineStyle1.copyWith(color: Colors.white, fontSize: 23),
    ),
    ),),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 18),
          child: Column(
            children: [
              Container(
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.red.shade500,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [//PMMSY
                      Text("Mahila Kisaan Sashaktikaran Pariyojana", style: Styles.headlineStyle2.copyWith(fontSize: 18, color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
